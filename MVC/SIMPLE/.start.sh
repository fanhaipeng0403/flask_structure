# !/bin/bash

dirname=$1

if [ ! -d "$dirname" ]
then
    mkdir ./$dirname && cd $dirname
    mkdir ./application
    mkdir -p ./application/{controllers,models,static,static/css,static/js,templates}
    touch {manage.py,requirements.txt}
    touch ./application/{__init__.py,app.py,configs.py,extensions.py}
    touch ./application/{controllers/__init__.py,models/__init__.py}
    touch ./application/{static/css/style.css,templates/404.html,templates/base.html}
    echo "File created"
else
    echo "File exists"
fi



