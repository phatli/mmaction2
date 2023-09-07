#!/bin/bash

DIR="/home/user/mmaction2"

if [ ! -d "$DIR" ]; then
  git clone https://github.com/open-mmlab/mmaction2.git "$DIR"
fi

cd "$DIR"
git checkout main
pip install cython --no-cache-dir
pip install --no-cache-dir -e .
cd

exec "$@"