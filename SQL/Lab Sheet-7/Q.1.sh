#!/bin/bash



mkdir -p Test1/Test2/Test3

ls -l > Test1/Test2/Test3/file1

cd /home/gautamrajesh007/Test1/Test2/Test3

cat file1 | cut -d " " -f10 

cat file1 | cut -d " " -f10 | grep ^d

cat file1 | tr ' ' '\n'

cd