# Этап сборки
FROM node:18-alpine AS builder

WORKDIR /app

# Копируем файлы package.json и package-lock.json
COPY package*.json ./

# Устанавливаем все зависимости (включая dev для сборки)
RUN npm install

# Копируем остальные файлы проекта
COPY . .

# Собираем приложение
RUN npm run build

# Финальный этап
FROM node:18-alpine AS runner

WORKDIR /app

# Устанавливаем wget для health check
RUN apk add --no-cache wget

# Создаем пользователя для безопасности
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nuxt -u 1001

# Копируем собранное приложение из этапа сборки
COPY --from=builder --chown=nuxt:nodejs /app/.output /app/.output
COPY --from=builder --chown=nuxt:nodejs /app/package*.json /app/

# Устанавливаем только production зависимости, пропуская postinstall
RUN npm install --omit=dev --ignore-scripts

# Переключаемся на пользователя nuxt
USER nuxt

# Указываем порт, который будет использоваться
EXPOSE 3000

# Добавляем health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/ || exit 1

# Используем exec form для правильной обработки сигналов
CMD ["npx", "nuxi", "preview", "--host", "0.0.0.0"]
