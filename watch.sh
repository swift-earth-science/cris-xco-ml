#!/usr/bin/env bash

source activate.sh

echo 'open http://localhost:4010'

livereload \
    --port 4010 \
    --target book/_build/dirhtml/index.html \
    book/_build/dirhtml