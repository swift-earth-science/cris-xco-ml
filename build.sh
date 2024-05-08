#!/usr/bin/env bash

source activate.sh

jupyter-book build --builder dirhtml --all book/

cp book/CNAME book/_build/dirhtml
touch book/_build/dirhtml/.nojekyll