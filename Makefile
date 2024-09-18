IMAGE_NAME = farheenmalik01/activity2
CONTAINER_NAME = my_app_container
PORT = 8000

docker:
	docker build -t $(IMAGE_NAME):latest .

images:
	docker images

delete:
	docker rmi $(IMAGE_NAME):latest

containers:
	docker ps

start: docker
	docker run -d -p $(PORT):$(PORT) --name $(CONTAINER_NAME) $(IMAGE_NAME):latest

stop:
	@docker stop $(CONTAINER_NAME)

