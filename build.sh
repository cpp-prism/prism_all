#! /bin/bash
set -x

currentpath=$(pwd)

paths=("$currentpath/prism/build" "$currentpath/prism_container/build" "$currentpath/prism_qt_modular/build" "$currentpath/prism_qt_core/build" )

for path in ${paths[@]}; do
   mkdir -p $path
   cd $path
   cmake ..  $@
   if [ $? -ne 0 ]; then
    exit 1
   fi
   cmake --build . --target install --config release
   if [ $? -ne 0 ]; then
    exit 1
   fi
done
