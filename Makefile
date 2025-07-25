company=rmoraes92
project=gleam

docker_img_tag=1-alpine-3

docker_img_name=$(company)/$(project):$(docker_img_tag)

build_docker_img:
	docker build . -t $(docker_img_name) -f src/$(docker_img_tag)/Dockerfile

run_docker_img:
	docker run --rm -ti $(docker_img_name)

push_docker_img:
	docker push $(docker_img_name)
