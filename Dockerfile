# Используем базовый образ Node.js
FROM node:16

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
# RUN npm install
RUN npm install --only=prod --unsafe-perm

# Копируем остальной код проекта
COPY . .

# Собираем приложение Nuxt.js
RUN npm run build

# Команда для запуска приложения
CMD ["npm", "run", "start"]
