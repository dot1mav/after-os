#!/bin/bash
PYTHON2_PACKAGES="python2 python2-pip"
PYTHON3_PACKAGES="python3 python3-pip"


install_python_2(){
    eho "installing python 2"
    sleep 2
    apt-get update &> /dev/null
    apt-get upgrade -y &> /dev/null
    apt-get install $PYTHON2_PACKAGES -y &> /dev/null
}

install_python_3(){
    eho "installing python 3"
    sleep 2
    apt-get update &> /dev/null
    apt-get upgrade -y &> /dev/null
    apt-get install $PYTHON3_PACKAGES -y &> /dev/null
}


install_venv(){
    echo "install virtual enviroment"
    sleep 2
    python -m pip install virtualenv &> /dev/null
}

install_pipenv(){
	echo "installing pipenv(virtual env)..."
	python3 -m pip install pipenv &> /dev/null
	sleep 3
	clear
}