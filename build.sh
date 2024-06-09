#!/usr/bin/env bash

source activate.sh

jupyter-book build --builder dirhtml --all book/

# fix https://github.com/executablebooks/jupyter-book/issues/2066
find book/_build/dirhtml \
    -type f \
    -name "index.html" \
    -exec sed -i '' 's|<link rel="canonical" href="https://cris-xco-ml.swiftearthscience.org/\(.*\)\.html" />|<link rel="canonical" href="https://cris-xco-ml.swiftearthscience.org/\1/" />|g' {} \;

sed -i '' 's|<link rel="canonical" href="https://cris-xco-ml.swiftearthscience.org/index/" />|<link rel="canonical" href="https://cris-xco-ml.swiftearthscience.org/" />|g' book/_build/dirhtml/index.html

# copy CNAME file to the build directory
cp book/CNAME book/_build/dirhtml
touch book/_build/dirhtml/.nojekyll