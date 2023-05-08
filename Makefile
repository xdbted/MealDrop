run: build up

build:
	docker-compose build

up:
	docker-compose up

create-migrations:
	python manage.py makemigrations

down-remove-volumes:
	docker-compose -f docker-compose.yaml down -v
