# Этап сборки
FROM node:18-alpine AS builder

WORKDIR /app

# Копируем файлы package.json и package-lock.json
COPY package*.json ./

# Устанавливаем все зависимости
RUN npm install

# Копируем остальные файлы проекта
COPY . .

# Собираем приложение
RUN npm run build

# Финальный этап - nginx для статического сайта
FROM nginx:alpine

# Устанавливаем wget для health check
RUN apk add --no-cache wget

# Копируем статические файлы
COPY --from=builder /app/.output/public /usr/share/nginx/html

# Создаем конфигурацию nginx
RUN echo 'server { \
    listen 80; \
    server_name localhost; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# Указываем порт
EXPOSE 80

# Добавляем health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
