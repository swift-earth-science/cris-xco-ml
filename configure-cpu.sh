#!/usr/bin/env bash

# get script dir
script_dir=$( cd `dirname ${BASH_SOURCE[0]}` >/dev/null 2>&1 ; pwd -P )

pushd $script_dir > /dev/null

# git
git config filter.remove-notebook-output.clean 'jupyter nbconvert --clear-output --to=notebook --stdin --stdout --log-level=ERROR'

# C Libraries

# needed to run / debug with mod_spatialite
# also configure same path in .env (which is used by pytest):
export LD_LIBRARY_PATH=/usr/local/lib
echo "LD_LIBRARY_PATH=/usr/local/lib" > .env

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
pip install --upgrade wheel
pip install --upgrade pip

# install development and runtime packages
pip install -r requirements-cpu.txt

# directories
mkdir -p ./book/data
mkdir -p ./book/models

popd > /dev/null
