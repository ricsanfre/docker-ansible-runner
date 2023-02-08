BUILD_ARGS=
TAG=ansible-runner

build-ansible:
	docker build ${BUILD_ARGS} --tag ${TAG} .

execute-ansible:
	docker run --rm -v ${PWD}/playbooks:/runner ${TAG} ansible-runner run /runner -p test-playbook.yml
