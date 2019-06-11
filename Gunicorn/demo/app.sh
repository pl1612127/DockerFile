#!/bin/sh
# AUTHOR: admin@mikepeng.cn
# DESC: 应用启动脚本

# CONF
USE_APP=/home/app
DEF_APP=/home/demo

# INSTALL
if [ -f $USE_APP/requirements.txt ];then
    pip3 install -r $USE_APP/requirements.txt
else
    pip3 install flask
fi

# RUN
if [ -f $USE_APP/main.py ];then
    cd $USE_APP
    gunicorn -w $1 -b :80 main:app
else
    cd $DEF_APP
    gunicorn -w $1 -b :80 main:app
fi