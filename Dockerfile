# Используем официальный образ Node.js в качестве базового
FROM node:18-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# RUN chmod +x node_modules/.bin/nuxt

# Копируем остальные файлы проекта
COPY . .

# Собираем приложение
RUN npm run build

# Указываем порт, который будет использоваться
EXPOSE 3000

CMD ["npx", "nuxi", "preview"]
