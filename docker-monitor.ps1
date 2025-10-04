# PowerShell скрипт для мониторинга и автоматического перезапуска Docker контейнера

$CONTAINER_NAME = "kovka-landing-nuxt-app-1"
$LOG_FILE = "docker-monitor.log"

# Функция для логирования
function Write-Log {
    param($Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp - $Message" | Out-File -FilePath $LOG_FILE -Append
    Write-Host "$timestamp - $Message"
}

# Функция для проверки состояния контейнера
function Check-Container {
    try {
        $container = docker ps --filter "name=$CONTAINER_NAME" --format "{{.Names}}"
        
        if (-not $container) {
            Write-Log "Контейнер $CONTAINER_NAME не запущен. Перезапускаем..."
            docker-compose up -d
            Write-Log "Контейнер перезапущен"
        } else {
            # Проверяем health check
            $health = docker inspect --format='{{.State.Health.Status}}' $CONTAINER_NAME 2>$null
            if ($health -eq "unhealthy") {
                Write-Log "Контейнер $CONTAINER_NAME нездоров. Перезапускаем..."
                docker-compose restart
                Write-Log "Контейнер перезапущен"
            }
        }
    } catch {
        Write-Log "Ошибка при проверке контейнера: $($_.Exception.Message)"
    }
}

# Основной цикл мониторинга
Write-Log "Запуск мониторинга Docker контейнера..."
while ($true) {
    Check-Container
    Start-Sleep -Seconds 60  # Проверяем каждую минуту
}
