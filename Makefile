IMAGE_NAME := my-flask-app
CONTAINER_NAME := my-flask-container

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: run
run:
	docker run -d -p 5000:5000 --name $(CONTAINER_NAME) $(IMAGE_NAME)

.PHONY: stop
stop:
	docker stop $(CONTAINER_NAME) || true
	docker rm $(CONTAINER_NAME) || true

.PHONY: test
test:
	docker exec $(CONTAINER_NAME) python src/test_server.py
