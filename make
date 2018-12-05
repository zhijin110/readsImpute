#!/bin/bash
path=`pwd`
while getopts "p:" arg;
do
	case $arg in
	  p)
	    path=${OPTARG}
	    ;;
	esac
done
echo $path
cat .m readsImpute.2.1.18.1113.jar > $path/readsImpute && chmod +x $path/readsImpute
if [ -f ~/.bashrc ] 
then
  echo "export PATH=${path}/:$PATH" >> ~/.bashrc 
else
  cp /etc/skel/.bashrc ~/
  echo "export PATH=${path}/:$PATH" >> ~/.bashrc
fi
source ~/.bashrc