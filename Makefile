nonly: build
	docker-compose stop
	docker-compose build nginx
	docker-compose start
	docker-compose logs

up: build
	docker-compose up

build:
	boot2docker up
	docker build -t "dkdde/fish_nginx" .

publish: build
	docker push "dkdde/fish_nginx"
