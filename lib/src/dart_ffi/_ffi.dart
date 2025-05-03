import 'dart:ffi';
import 'package:ffi/ffi.dart';

import '../../ffi_helper.dart' show LoadOption;
export 'dart:ffi';

extension LibraryExtensions on DynamicLibrary {
  Allocator get memory => calloc;

  Allocator get allocator => calloc;
  
}

Future<DynamicLibrary> openDynamicLibraryWithOptions(String path, Set<LoadOption> options) async {
  return DynamicLibrary.open(path);
}
