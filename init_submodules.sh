#!/usr/bin/env bash
DIR=$( cd `dirname $0` && pwd )
cd $DIR

#List the submodules here
echo "Initiating submodules in $DIR"
MODULES="\
    chisel-blocks-utils \
    register_template \
"
git submodule sync

#Self-made selective recursion
for mod in $MODULES; do
    git submodule update --init
    echo $mod
    if [ -f $mod/init_submodules.sh ]; then
        cd $mod
        ./init_submodules.sh
    fi
    cd $DIR
done

exit 0

