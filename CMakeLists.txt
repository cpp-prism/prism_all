cmake_minimum_required(VERSION 3.14)
project(prism_all)

if(NOT DEFINED PRISM_VERSION)
    file(READ "${CMAKE_CURRENT_LIST_DIR}/version.txt" FILE_CONTENT)
    string(STRIP "${FILE_CONTENT}" FILE_CONTENT)
    set(PRISM_VERSION "${FILE_CONTENT}" CACHE STRING "Prism version" FORCE)
else()
    file(WRITE "${CMAKE_CURRENT_LIST_DIR}/version.txt" ${PRISM_VERSION})
endif()

add_subdirectory(prism)
add_subdirectory(prism_container)
add_subdirectory(prism_qt_modular)
add_subdirectory(prism_qt_core)
add_subdirectory(prism_qt_ui)

