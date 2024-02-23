#! /bin/bash
set -x

currentpath=$(pwd)
installpath=$currentpath/../vcpkg_installed/x64-linux
mkdir -p $installpath

paths=("$currentpath/prism/build" "$currentpath/prism_container/build" "$currentpath/prism_qt_modular/build" "$currentpath/prism_qt_core/build" "$currentpath/prism_qt_ui/build")

for path in ${paths[@]}; do
   rm -rf $path
done
rm -rf $currentpath/bin
