#!/usr/bin/env bash

source activate.sh

ghp-import --no-jekyll --push --force --branch gh-pages  book/_build/dirhtml

open https://cris-xco-ml.swiftearthscience.org
