# EmscriptenLang

## Samples
To get an overview of the language please check the examples folder, it contains lot of useful samples that will introduce the lanuguage with real-world problems.
All tests including the TestFramework itself are written in EmscriptenLang and therefore can be used as an fully working sample as well.

## Standard library
The standard library can be found in the std folder.
Keep in mind that the full c++ std library is available using import("std")
A future goal though is to remove all direct c++ dependencies and rewrite as many as possible in emscripten lang

## Compiler
The compiler is using clang as an base. To be detailed it uses LibTooling which exposes clang functioanlity.
The full source code is parsed, analyed and then using source-to-source technology the em source is translated back into valid c++ which is then compiled by clang. 