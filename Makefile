# Image names for docker
ENV_IMAGE_NAME=test/ruby-env


####

build: env-image test-run

env-image:
	@echo ":::Building Environment Images"
	docker build --rm -f App.Dockerfile -t $(ENV_IMAGE_NAME) .

test-run:
	@echo ":::Running Check Container"
	docker run -i --rm \
	-p 8082:3000 \
    $(ENV_IMAGE_NAME)