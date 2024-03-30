#! /bin/bash
set -x

currentpath=$(pwd)
installpath=$currentpath/../vcpkg_installed/arm64-linux
#installpath=$currentpath/../vcpkg_installed/x64-linux
mkdir -p $installpath

paths=("$currentpath/prism/build" "$currentpath/prism_container/build" "$currentpath/prism_qt_modular/build" "$currentpath/prism_qt_core/build" "$currentpath/prism_qt_ui/build")

for path in ${paths[@]}; do
   mkdir -p $path
   cd $path
   #cmake .. -DCMAKE_INSTALL_PREFIX=$installpath -DCMAKE_TOOLCHAIN_FILE=/repos/vcpkg/toolchains/arm64-raspberrypie.cmake
   cmake .. -DCMAKE_INSTALL_PREFIX=$installpath -DCMAKE_TOOLCHAIN_FILE=/repos/vcpkg/toolchains/arm64-jetson-xavier-nx.cmake
   if [ $? -ne 0 ]; then
    exit 1
   fi
   cmake --build . --target install --config release
   if [ $? -ne 0 ]; then
    exit 1
   fi
done
