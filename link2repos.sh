

cwd=$(pwd)
repos=$HOME/aux/repos

bname=$(basename $cwd)

mkdir -p $repos
rm -f $repos/$bname

ln -s $cwd $repos/$bname

