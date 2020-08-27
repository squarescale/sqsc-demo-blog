PWD := $(shell pwd)
DOCKER_IMAGE := "klakegg/hugo:0.74.3"

local:
	@docker run --rm -it -v ${PWD}:/src -v ${PWD}/target:/target ${DOCKER_IMAGE} --destination=/target --baseURL="./"

root:
	@docker run --rm -it -v ${PWD}:/src -v ${PWD}/target:/target ${DOCKER_IMAGE} --destination=/target --baseURL="/"

build:
	@docker build -t squarescale/sqsc-demo-blog-hugo .
