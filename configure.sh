#!/usr/bin/env bash

echo "Python ..."

# Do not install Python if in Anaconda environment or we are on Docker container
if [[ -z "$CONDA_DEFAULT_ENV" && ! -f /.dockerenv ]]
then
    # install Python 3.11.0 if not installed
    pyenv install 3.11.0 --skip-existing
    pyenv versions

    # use Python 3 from .python-version for local development
    eval "$(pyenv init -)"
fi

# create virtual environment
python3 -m venv .venv

# activate virtual environment
source .venv/bin/activate

# upgrade pip
pip install --upgrade pip wheel

# install dev requirements
pip install -r dev/requirements.txt

# install book requirements
pip install -r book/requirements.txt

mkdir -p ./book/data
mkdir -p ./book/scripts
mkdir -p ./book/images
