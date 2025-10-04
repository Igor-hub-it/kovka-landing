#!/bin/bash

# Скрипт для мониторинга и автоматического перезапуска Docker контейнера

CONTAINER_NAME="kovka-landing-nuxt-app-1"
LOG_FILE="/var/log/docker-monitor.log"

# Функция для логирования
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> $LOG_FILE
}

# Функция для проверки состояния контейнера
check_container() {
    if ! docker ps | grep -q $CONTAINER_NAME; then
        log "Контейнер $CONTAINER_NAME не запущен. Перезапускаем..."
        cd /path/to/your/project  # Замените на реальный путь к проекту
        docker-compose up -d
        log "Контейнер перезапущен"
    else
        # Проверяем health check
        HEALTH=$(docker inspect --format='{{.State.Health.Status}}' $CONTAINER_NAME 2>/dev/null)
        if [ "$HEALTH" = "unhealthy" ]; then
            log "Контейнер $CONTAINER_NAME нездоров. Перезапускаем..."
            docker-compose restart
            log "Контейнер перезапущен"
        fi
    fi
}

# Основной цикл мониторинга
while true; do
    check_container
    sleep 60  # Проверяем каждую минуту
done
