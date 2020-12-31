SHELL := /bin/bash

.DEFAULT_GOAL := help

.PHONY: ssh-keys 
ssh-keys: 
	mkdir ${HOME}/.ssh
	cd ${HOME}/.ssh
	ssh-keygen -t rsa

.PHONY: clean-ssh-keys
clean-ssh-keys:
	rm -rf ${HOME}/.ssh

.PHONY: vim 
vim: 
	cp ./vim/.vimrc ~/.vimrc 
	cp -r ./vim/templates ~/.vim/

.PHONY: clean-vim
clean-vim:
	rm -r ~/.vim/templates 
	rm ~/.vimrc

.PHONY: help
help:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'


