#!/bin/bash

function project(){
    mkdir ~/Projects/$1
    cd ~/Projects/$1
    git init
    touch README.md
    touch .gitignore
    git add .
    git commit -m "Initial Commit"
    hub create
    git push -u origin master
    code .
    echo "Done"
}