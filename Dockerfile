FROM ubuntu:focal
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade && apt install -y software-properties-common && apt-add-repository -y ppa:ansible/ansible && apt update && apt install -y curl git ansible build-essential
COPY . .
RUN ["sh", "-c", "ansible-playbook $TAGS fresh.yml"]
COPY zshrc /root/.zshrc
CMD ["zsh"]
