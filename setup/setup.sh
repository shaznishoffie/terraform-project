#!/bin/bash

# create a virtual environment for terraform development
python -m venv $HOME/venv/terraform-project

# upgrades brew upon run
brew upgrade

# install brew packages
for i in $(cat brew_requirements.txt); do
    if brew list --formula | grep -q "^${i}$"; then
      echo "Package installed. Attempting to upgrade..."
      brew upgrade "$i"
    else
      echo "Package not installed. Attempting to install..."
      brew install "$i"
    fi
done

# install pip packages
pip install $(cat pip_requirements.txt)

# install pre-commit git hook scripts
pre-commit install
