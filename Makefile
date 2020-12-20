SHELL := /bin/bash

.DEFAULT_GOAL := help

.PHONY: vim 
vim: 
	cp ./vim/.vimrc ~/.vimrc 
	cp -r vim/templates ~/.vim/

clean:
	rm -r ~/.vim/templates ~/.vimrc

.PHONY: help
help:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'


