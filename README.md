
[prism](https://github.com/cpp-prism/prism) is a static reflection framework that relies solely on STL, supports extensions, and comes with a simple reflection-based JSON library. It is currently extending SQL ORM.

[prism_container](https://github.com/cpp-prism/prism_container) is a dependency injection framework.

[prism_qt_modular](https://github.com/cpp-prism/prism_qt_modular) is related to modules, including a cross-platform dynamically loaded library and encapsulation of C-style function pointers.

[prism_qt_core](https://github.com/cpp-prism/prism_qt_core) is the core library for the Qt reflection extension. It mainly encapsulates Qt list models and tree models in a generic way and supports QML two-way binding to ordinary C++ classes.

[prism_qt_ui](https://github.com/cpp-prism/prism_qt_ui) is related to QML reflection extension. It encapsulates some additional desktop controls, such as an OpenGL video renderer (currently only supports mono8, rgb).

[prism_all](https://github.com/cpp-prism/prism_all) is the top-level project managed through git submodule, making it easy to check out compatible versions of each module.

[prism_vcpkg](https://github.com/cpp-prism/prism_vcpkg) is in the planned vcpkg private registry. All prism modules support the automatic generation of vcpkg package data. Simply publish it to the private vcpkg warehouse and enjoy vcpkg's asset cache, binary cache, version control, and other benefits.

