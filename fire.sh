#! /bin/bash

cp -r /golem/vim /golem/work/vim
cd /golem/work/vim

make -j2 >> /golem/work/log.txt 2>&1
