# PMAP
# A simple image format that is human readable and editable
# GitHub: https://www.github.com/0x4248/PMAP
# Licence: GNU General Public License v3.0
# By: 0x4248

PYTHON = python3
PIP = pip3

ifeq (, $(shell which $(PYTHON)))
$(error "No $(PYTHON) in PATH, please install $(PYTHON) or set the PYTHON variable to the correct path")
endif

all: dependencies_check build

install_all_and_build: install_requirements build

build:
	$(PYTHON) setup.py sdist bdist_wheel

dependencies_check:
	$(PYTHON) tools/dependencies_check.py

install_requirements:
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt
	$(PIP) install --user --upgrade setuptools

clean:
	@echo "RM\tbuild dist PMAP.egg-info"
	@rm -rf build dist PMAP.egg-info

.PHONY: all build update_pip install_requirements clean