#!/bin/sh

echo 'Waiting for postgres database connection...'
until nc -z -v -w30 $POSTGRES_HOST $POSTGRES_PORT
do
    sleep 10
done

echo "Run migrations":
python manage.py migrate --noinput

echo "Run server":
python manage.py runserver 0.0.0.0:8000
