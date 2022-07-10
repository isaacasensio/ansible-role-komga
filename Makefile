.PHONY: all lint test help

LINT=ansible-lint
MOLECULE=molecule

all: lint test

help:
	@echo "Make command examples for Ansible"
	@echo "    lint                           to lint playbook files"
	@echo "    test                 		  to run our molecule tests"

lint:
	$(LINT) .

test:
	$(MOLECULE) test
