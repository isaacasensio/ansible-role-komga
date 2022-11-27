.PHONY: all lint test help converge

LINT=ansible-lint
MOLECULE=molecule

all: lint test

help:
	@echo "Make command examples for Ansible"
	@echo "    lint                           to lint playbook files"
	@echo "    test                 		  to run our molecule tests"
	@echo "    converge                 	  to run our molecule converge"

lint:
	$(LINT) .

test:
	$(MOLECULE) test

converge:
	$(MOLECULE) converge
