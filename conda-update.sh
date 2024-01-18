#!/bin/sh

for condaEnv in `conda env list | cut -d' ' -f1 | grep -v '#'`; do
    echo "--- updating \"$condaEnv\" ---"
    conda update -n $condaEnv --all -y
done

#conda update -n base --all -y
#conda update -n py37-internetarchive-dl --all -y
#conda update -n py39 --all -y
