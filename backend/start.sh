#!/usr/bin/env bash

# install python3.6
if !command -v python3 &>/dev/null; then
    echo "You need to install python3.6, starting installation ..."
    sudo apt install python3.6
fi

# install pip3
if !command -v pip3 &>/dev/null; then
    echo "You need to install pip3, starting installation ..."
    sudo apt install python3-pip
fi

# install virtualenv
if !command -v virtualenv &>/dev/null; then
    echo "You need to install virtualenv, starting installation ..."
    sudo pip3 install virtualenv
fi

# make environment
virtualenv -p python3 env3
source env3/bin/activate
pip install -r requirements.txt

# start server
python server.py
