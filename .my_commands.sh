#!/bin/bash

function create() {
    source .env
    python create.py $1 $2
    cd $FILEPATH$1
    git init
    git remote add origin git@github.com:$USERNAME/$1.git
    touch README.md
    git add .
    git commit -m "README Created"
    git push -u origin master
}
