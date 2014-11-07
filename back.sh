#!/bin/bash 
if [ $# != 1 ];then
    #echo "a go back dir number required."
#    exit 1
    level=1
else
    level=$1
fi
#newdir=`echo "../" | awk -v num=$1 '{for(i=1;i<=num;i++) printf($0)}'`
newdir=`echo "../" | awk -v num=$level '{for(i=1;i<=num;i++) printf($1)}'`
#echo ${newdir}
cd $newdir

# copy this file to /bin
# You also need to add "alias up='source /bin/back.sh'" to ~/.bashrc
# . ./bashrc
