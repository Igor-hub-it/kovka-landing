# Используем официальный образ Node.js в качестве базового
FROM node:18-alpine

# Устанавливаем wget для health check
RUN apk add --no-cache wget

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы package.json и package-lock.json
COPY package*.json ./

# Устанавливаем все зависимости
RUN npm install

# Копируем остальные файлы проекта
COPY . .

# Собираем приложение
RUN npm run build

# Создаем пользователя для безопасности
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nuxt -u 1001

# Меняем владельца файлов
RUN chown -R nuxt:nodejs /app
USER nuxt

# Указываем порт, который будет использоваться
EXPOSE 3000

# Добавляем health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/ || exit 1

# Используем exec form для правильной обработки сигналов
CMD ["node", ".output/server/index.mjs"]
