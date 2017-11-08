[![License](https://img.shields.io/badge/license-%20poetic-blue.svg)](../master/LICENSE.md)


# Calculator

Exercise to practice building projects with [CMake](https://cmake.org).

The source code and unit tests are there:

```
.
├── LICENSE.md
├── README.md
├── src
│   ├── add.f90
│   ├── calculator.h
│   ├── main.cpp
│   └── subtract.f90
└── test
    ├── calculator.cpp
    └── main.cpp
```


## Tasks

- Build a shared library.
- Build and link the main program.
- Build the unit tests and link against [Google Test](https://github.com/google/googletest).
- Define a version number inside CMake and print it to the output of the executable.
- Print the Git hash to the output of the executable.
- Create an installer so the program can be installed properly (GNU standards).
- Create a DEB or RPM package (if relevant for your distribution).
