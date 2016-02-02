# nonly: build
# 	docker-compose stop
# 	docker-compose build nginx
# 	docker-compose start
# 	docker-compose logs

up: build
	docker-compose up

build:
	docker build -t "dkdde/fish_nginx" .

publish: build
	docker push "dkdde/fish_nginx"

# serverrecreate:
# 	sudo docker-compose stop
# 	sudo docker-compose rm -fv
# 	sudo docker-compose pull
# 	sudo docker-compose up -d
# 	sudo docker-compose logs

review:
	sudo docker-compose stop
	sudo docker-compose rm -fv nginx r_web r_db
	sudo docker-compose pull
	sudo docker-compose up -d
	sudo docker-compose logs
