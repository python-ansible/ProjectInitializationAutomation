#!/bin/bash

function create() {
    cd /Users/wangzelin/Projects/ProjectInitializationAutomation
    # switch to virtualenv
    workon py2
    python create.py $1
    #python remove.py $1
    cd /Users/wangzelin/Projects/$1
    git init
    git remote add origin git@github.com:python-ansible/$1.git
    touch README.md
    echo $1 >> README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    # code .
}