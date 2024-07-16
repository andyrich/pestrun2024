#!/bin/sh

mkdir -p  testpython
ls
tar -xzf testpython.tar.gz -C testpython

export PATH=./testpython/bin:${PATH}

python runme.py
