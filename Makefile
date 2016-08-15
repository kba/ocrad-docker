DOCKER_IMAGE := kbai/ocrad

docker:
	docker build -t "$(DOCKER_IMAGE)" .
