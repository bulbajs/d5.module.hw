Django-проект с авторизацией через почту и Яндекс (django-allauth)
----------------
Для того чтобы проверить задание, следует восстановить БД, группы с их правами, Sites, Social accounts, Social applications
----------------

Шаг 1. Создание файла .env.example

Создайте файл .env на основании .env.example. Параметры, которые касаются БД можно скопировать те же самые, что касается параметров для OAuth, нужно вставить свои в файл .env и в админку по ссылке 
http://127.0.0.1:8000/admin/socialaccount/socialapp/, но об этом позже.

Шаг 2. Настройка базы данных PostgreSQL

1. Эти данные уже лежат в файле .env.example :

   ```
   DB_NAME=d5hw_db
   DB_USER=d5hw_user
   DB_PASSWORD=d5
   DB_HOST=localhost
   DB_PORT=5432
   ```
2. В командной строке (cmd/PowerShell) выполните:

   psql -U postgres -W (Далее введите пароль суперпользователя )
   Далее:
   CREATE USER d5hw_user WITH PASSWORD 'd5';
   CREATE DATABASE d5hw_db OWNER d5hw_user;

Шаг 3. Восстановление дампа БД

В PowerShell:
pg_restore -U d5hw_user -d d5hw_db "C:\Путь\к\дампу\d5hw_db.dump"
(Нужно будет заменить путь на фактический путь к вашему)

Шаг 4. Загрузка доп. данных: группы, разрешения и OAuth

1. Примените миграции:
python manage.py migrate

2. Загрузка данных (Группы и разрешения)

Загружаем дамп
python manage.py loaddata auth_data.json

3. Загрузка данных OAuth(Sites + SocialApp + аккаунты)

Загружаем дамп
python manage.py loaddata social_allauth_dump.json
 
Шаг 5. Настройка авторизации через Яндекс

1. Перейдите в админку:
   [http://127.0.0.1:8000/admin/socialaccount/socialapp/](http://127.0.0.1:8000/admin/socialaccount/socialapp/)

2. Откройте запись `Yandex` и заполните:
   - `Client ID`
   - `Secret Key`
   - Укажите действующий сайт в Domain name 127.0.0.1:8000


