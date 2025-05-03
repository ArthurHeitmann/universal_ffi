/// Foreign Function Interface for interoperability with the C programming language.
///
/// This is quivalent to the `dart:ffi` package for all platforms.
library universal_ffi;

export 'src/wasm_ffi/_ffi.dart'
    if (dart.library.ffi) 'src/dart_ffi/_ffi.dart';
