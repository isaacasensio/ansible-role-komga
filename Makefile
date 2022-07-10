.PHONY: all lint galaxy-install help

GALAXY=ansible-galaxy
LINT=ansible-lint
MOLECULE=molecule

all: lint galaxy-install

help:
	@echo "Make command examples for Ansible"
	@echo "    lint                           to lint playbook files"
	@echo "    galaxy-install                 to install roles using ansible-galaxy"
	@echo "    test                 		  to run our molecule tests"

lint:
	$(LINT) .

galaxy-install:
	$(GALAXY) install -r requirements.yml

test:
	$(MOLECULE) test
