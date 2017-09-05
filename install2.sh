#!/bin/sh

perllib=$HOME/.perllib
[ -d $perllib ] || mkdir -p $perllib

rm -f $perllib/Aux
ln -s $(pwd)/Aux $perllib/


aux=$HOME/aux
[ -d $aux ] && { 
	bname=$(basename $(pwd))
	rm -f $aux/$bname
	ln -s $(pwd) $aux/$bname

	rm -f $aux/.perllib
	ln -s $perllib $aux/.perllib
}
