DOCKER_HUB_REPO?=fastcomply
DOCKER_HUB_REGISTRY_IMAGE?=kong-oidc
DOCKER_HUB_REGISTRY_TAG?=1.0.0-dev

REGISTRY_IMG=$(DOCKER_HUB_REPO)/$(DOCKER_HUB_REGISTRY_IMAGE):$(DOCKER_HUB_REGISTRY_TAG)

all: container-deploy

container-deploy:	
	@echo "Building container: docker build --tag $(REGISTRY_IMG) -f Dockerfile ."
	sudo docker build --tag $(REGISTRY_IMG) -f Dockerfile . --no-cache
	@echo "Build successfully completed"
