# Домашнє завдання: Bash + FastAPI у Docker

##  Завдання 1. Перевірка доступності сайтів

Запустіть скрипт:
```bash
chmod +x check_websites.sh
./check_websites.sh
```
Результати буде записано у `website_status.log`.

---

##  Завдання 2. FastAPI + PostgreSQL у Docker

### Як запустити
1. Розпакуйте архів:
   ```bash
   unzip homework_web_docker_with_main.zip
   cd homework_web_docker_with_main
   ```

2. Запустіть Docker Compose:
   ```bash
   docker-compose up --build
   ```

3. Відкрийте у браузері:
   ```
   http://127.0.0.1:8000
   ```
   Має відобразитися: **Welcome to FastAPI!**

4. Перевірка БД:
   ```
   http://127.0.0.1:8000/check-db
   ```
   Якщо все добре, ви отримаєте: `Database is available!`

---

##  Файли у архіві
- `check_websites.sh` — Bash-скрипт для перевірки сайтів
- `Dockerfile` — інструкції для створення образу FastAPI
- `docker-compose.yaml` — конфігурація FastAPI + PostgreSQL
- `requirements.txt` — Python-залежності
- `main.py` — FastAPI-застосунок
- `conf/db.py` — підключення до бази даних
- `README.md` — інструкція з запуску
