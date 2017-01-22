DOCKER=/bin/docker
DOCKER_IMAGE_NAME=acch/rpi-wpscan
DOCKER_RUBY_NAME=knjcode/rpi-ruby
DOCKER_RUBY_VERSION=2.4.0

default: build

wpscan/Dockerfile.bak:
	patch -b --suffix=.bak wpscan/Dockerfile Dockerfile.patch

build: wpscan/Dockerfile.bak
	$(DOCKER) pull $(DOCKER_RUBY_NAME):$(DOCKER_RUBY_VERSION) 
	$(DOCKER) build -t $(DOCKER_IMAGE_NAME) wpscan/

push:
	$(DOCKER) push $(DOCKER_IMAGE_NAME)

test:
	$(DOCKER) run --rm $(DOCKER_IMAGE_NAME) /bin/echo "Success."
