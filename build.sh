#! /bin/bash
set -x

currentpath=$(pwd)

paths=("prism" "prism_container" "prism_qt_modular" "/prism_qt_core" "prism_qt_ui" )

for path in ${paths[@]}; do
   full_path=$currentpath/$path/build
   mkdir -p $full_path
   cd $full_path
   cmake ..  $@
   if [ $? -ne 0 ]; then
    exit 1
   fi
   cmake --build . --target install --config release
   if [ $? -ne 0 ]; then
    exit 1
   fi
done
