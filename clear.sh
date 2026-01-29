#! /bin/bash
set -x

currentpath=$(pwd)

paths=("prism" "prism_container" "prism_qt_modular" "/prism_qt_core" "prism_qt_core" )


for path in ${paths[@]}; do
   full_path=$currentpath/$path/build
   rm -rf $full_path
done
rm -rf $currentpath/bin
