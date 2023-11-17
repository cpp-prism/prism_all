cmake_minimum_required(VERSION 3.14)
project(prism_all)
set(PRISM_VERSION  ${DV_VERSION})

add_subdirectory(prism)
add_subdirectory(prism_container)
add_subdirectory(prism_qt_modular)
add_subdirectory(prism_qt_core)
add_subdirectory(prism_qt_ui)

