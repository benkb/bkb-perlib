#!/bin/sh


cwd=$(pwd)
aux=$HOME/aux
bkb_perlib=$HOME/.bkb-perlib

mkdir -p $aux

rm -f $bkb_perlib
ln -s $cwd $bkb_perlib

rm -f $aux/.bkb-perlib
ln -s $cwd $aux/.bkb-perlib


exit 

# todo

locallib=$1

perllib=
if [ -n "$PERL_LOCAL_LIB_ROOT" ]; then
   perllib="$PERL_LOCAL_LIB_ROOT/lib/perl5"
else
   if [ -n "$locallib" ] ; then
      perllib=$locallib
   else
      echo  "usage: local perl library"
      exit 1
   fi

fi



[ -d "$perllib" ] || mkdir "$perllib"

rm -f $perllib/Bkb
ln -s $(pwd)/Bkb $perllib/Bkb


