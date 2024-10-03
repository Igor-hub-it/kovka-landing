# Используем официальный образ Node.js в качестве базового
FROM node:16-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы проекта
COPY . .

# Собираем приложение
RUN npm run build

# Указываем порт, который будет использоваться
EXPOSE 3000

# Команда для запуска приложения
CMD ["npm", "run", "start"]