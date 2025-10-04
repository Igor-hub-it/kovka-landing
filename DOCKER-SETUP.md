# Настройка стабильной работы Docker контейнера

## Что было изменено

### 1. Dockerfile
- Добавлен health check для проверки состояния приложения
- Настроена безопасность (пользователь nuxt вместо root)
- Улучшена обработка сигналов
- Добавлен флаг `--host 0.0.0.0` для корректной работы в контейнере

### 2. Docker-compose.yml
- Добавлена политика перезапуска `restart: unless-stopped`
- Настроены ограничения ресурсов (память, CPU)
- Добавлен health check на уровне Docker Compose
- Настроено логирование с ротацией файлов

### 3. Скрипты мониторинга
- `docker-monitor.ps1` - для Windows
- `docker-monitor.sh` - для Linux
- `docker-monitor.service` - systemd сервис для Linux

## Как запустить

### Базовый запуск
```bash
docker-compose up -d
```

### Запуск с мониторингом (Windows)
```powershell
# В PowerShell от имени администратора
.\docker-monitor.ps1
```

### Запуск с мониторингом (Linux)
```bash
# Сделать скрипт исполняемым
chmod +x docker-monitor.sh

# Запустить в фоне
nohup ./docker-monitor.sh &

# Или установить как systemd сервис
sudo cp docker-monitor.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable docker-monitor
sudo systemctl start docker-monitor
```

## Мониторинг

### Проверка состояния контейнера
```bash
docker ps
docker logs kovka-landing-nuxt-app-1
```

### Проверка health check
```bash
docker inspect kovka-landing-nuxt-app-1 | grep -A 10 Health
```

### Просмотр логов мониторинга
```bash
# Windows
Get-Content docker-monitor.log -Tail 20

# Linux
tail -f docker-monitor.log
```

## Автоматические перезапуски

Контейнер будет автоматически перезапускаться в следующих случаях:
1. При падении контейнера (restart: unless-stopped)
2. При нездоровом состоянии (health check)
3. При превышении лимитов ресурсов
4. При ручном перезапуске через скрипт мониторинга

## Ограничения ресурсов

- Максимум памяти: 512MB
- Максимум CPU: 0.5 ядра
- Резерв памяти: 256MB
- Резерв CPU: 0.25 ядра

## Логирование

- Логи контейнера ротируются (максимум 3 файла по 10MB)
- Логи мониторинга сохраняются в `docker-monitor.log`

## Устранение проблем

### Если контейнер не запускается
```bash
docker-compose down
docker-compose up --build
```

### Если проблемы с правами доступа
```bash
sudo chown -R $USER:$USER .
```

### Если проблемы с памятью
Увеличьте лимиты в `docker-compose.yml` в секции `deploy.resources.limits`
