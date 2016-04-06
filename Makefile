DOCKER_IMAGE_NAME := ingy/tickit-runtime

build:
	docker build -t $(DOCKER_IMAGE_NAME) .

shell:
	docker run -it $(DOCKER_IMAGE_NAME) bash

test:
	docker run -it -v $$PWD/tickit.pl:/tickit.pl $(DOCKER_IMAGE_NAME) perl /tickit.pl

push:
	docker push $(DOCKER_IMAGE_NAME)
