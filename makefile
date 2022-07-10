default:
	@echo "Available actions: \n\
	    * make clean - deletes env dir and cleans pip cache \n\
	    * make env   - create virtual env for python \n\
	    * make all   - performs clean -> env"

.PHONY: all env clean

PYTHON_EXEC = python3
VENV_PATH = env
VENV_PYTHON_EXEC = ./$(VENV_PATH)/bin/python

clean:
	@echo "Deleting junk..."
	rm -rf __pycache__
	rm -rf PyTgSend/__pycache__
	$(VENV_PYTHON_EXEC) -m pip cache purge
	rm -rf $(VENV_PATH)

env:
	@echo "Creating python virtual environment..."
	$(PYTHON_EXEC) -m venv $(VENV_PATH)
	$(VENV_PYTHON_EXEC) -m pip install ./

all: clean env
	@echo "All done!"
