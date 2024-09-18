docker:
	docker build -t activity2 .

images:
	docker images

delete:
	docker rmi activity2:latest 

containers:
	docker ps

start:
	docker run -d -p 8000:8000 --name my_app_container activity2:latest

stop:
	@docker stop $(CONTAINER_ID)
