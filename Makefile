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
	$(DOCKER) login
	$(DOCKER) push $(DOCKER_IMAGE_NAME)

test:
	$(DOCKER) run --rm $(DOCKER_IMAGE_NAME) --version

clean:
	$(DOCKER) images -qf dangling=true | xargs --no-run-if-empty $(DOCKER) rmi
	$(DOCKER) volume ls -qf dangling=true | xargs --no-run-if-empty $(DOCKER) volume rm

update:
	git submodule deinit -f .
	git submodule update --init

