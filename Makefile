build:
	boot2docker up
	docker build -t "dkdde/fish_nginx" .

run: build
	docker run -p "80:80" -it "dkdde/fish_nginx"

publish: build
	docker push "dkdde/fish_nginx"
