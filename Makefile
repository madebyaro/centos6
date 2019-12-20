# Makefile for building and running docker image

help:
	@echo build - builds a docker image
	@echo status - lists docker images and containers
	@echo run - runs container, detachs from terminal
	@echo attach - runs container, detachs from terminal
	@echo ""
	@echo setup, install-docker - installs docker on ubuntu 18.04

setup:
	sudo apt update
	sudo apt install openssh-server net-tools build-essential
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
	sudo apt update
	apt-cache policy docker-ce

install-docker:
	sudo apt install docker-ce
	sudo systemctl status docker

docker-nonroot:
	@echo Assumes user name is user1, also sudo would no longer be needed if this works 
	sudo usermod -aG docker user1

build:
	sudo docker build --tag centos6build .

status:
	@echo Listing images
	sudo docker images
	@echo Listing all containers
	sudo docker container ls -a
	@echo Listing running containers
	sudo docker container ls

run:
	sudo docker run -dit centos6build 
	sudo docker container ls

attach:
	sudo docker container ls
	@echo 'Run: sudo docker attach {container-id}'

