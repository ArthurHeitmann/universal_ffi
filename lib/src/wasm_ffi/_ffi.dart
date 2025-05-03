
import 'package:wasm_ffi/ffi.dart';

import '../../ffi_helper.dart' show LoadOption;

export 'package:wasm_ffi/ffi.dart';


Future<DynamicLibrary> openDynamicLibraryWithOptions(String path, Set<LoadOption> options) async {
  WasmType? wasmType;
  if (options.contains(LoadOption.isStandaloneWasm)) {
    wasmType = WasmType.wasm32Standalone;
  } else if (options.contains(LoadOption.isWasmPack)) {
    wasmType = WasmType.wasm32WasmPack;
  }
  
  return await DynamicLibrary.open(path, wasmType: wasmType);
}
