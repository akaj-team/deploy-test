# Image names for docker
ENV_IMAGE_NAME=test/ruby-env
CHECK_IMAGE_NAME=test/ruby-check


####

build: env-image test-run
check: check-image check-run

env-image:
	@echo ":::Building Environment Images"
	docker build --rm -f App.Dockerfile -t $(ENV_IMAGE_NAME) .

check-image:
	@echo ":::Building Check Images"
	docker build --rm -f Check.Dockerfile -t $(CHECK_IMAGE_NAME) .

test-run:
	@echo ":::Running App Container"
	docker run -td --rm \
	-p 8082:3000 \
    $(ENV_IMAGE_NAME)

check-run:
	@echo ":::Running Check Container"
	docker run -i --rm \
	--env-file env.list \
    -e DANGER_GITHUB_API_TOKEN=${DANGER_GITHUB_API_TOKEN} \
    -e JENKINS_URL=$(JENKINS_URL) \
    $(CHECK_IMAGE_NAME)