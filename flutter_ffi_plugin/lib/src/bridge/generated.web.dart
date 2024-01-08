// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.80.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "definitions.dart";
import 'dart:convert';
import 'dart:async';

import '../engine/exports.dart';
import 'generated.dart';
export 'generated.dart';

class BridgePlatform extends FlutterRustBridgeBase<BridgeWire>
    with FlutterRustBridgeSetupMixin {
  BridgePlatform(FutureOr<WasmModule> dylib) : super(BridgeWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  List<dynamic> api2wire_box_autoadd_rust_request_unique(
      RustRequestUnique raw) {
    return api2wire_rust_request_unique(raw);
  }

  Uint8List? api2wire_opt_uint_8_list(Uint8List? raw) {
    return raw == null ? null : api2wire_uint_8_list(raw);
  }

  List<dynamic> api2wire_rust_request(RustRequest raw) {
    return [
      api2wire_i32(raw.resource),
      api2wire_rust_operation(raw.operation),
      api2wire_opt_uint_8_list(raw.message),
      api2wire_opt_uint_8_list(raw.blob)
    ];
  }

  List<dynamic> api2wire_rust_request_unique(RustRequestUnique raw) {
    return [api2wire_i32(raw.id), api2wire_rust_request(raw.request)];
  }

  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external BridgeWasmModule get wasmModule;

@JS()
@anonymous
class BridgeWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external BridgeWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_prepare_rust_signal_stream(
      NativePortType port_);

  external dynamic /* void */ wire_prepare_rust_response_stream(
      NativePortType port_);

  external dynamic /* void */ wire_prepare_rust_report_stream(
      NativePortType port_);

  external dynamic /* void */ wire_prepare_channels(NativePortType port_);

  external dynamic /* void */ wire_check_rust_streams(NativePortType port_);

  external dynamic /* void */ wire_start_rust_logic(NativePortType port_);

  external dynamic /* void */ wire_stop_rust_logic(NativePortType port_);

  external dynamic /* void */ wire_request_to_rust(
      NativePortType port_, List<dynamic> request_unique);
}

// Section: WASM wire connector

class BridgeWire extends FlutterRustBridgeWasmWireBase<BridgeWasmModule> {
  BridgeWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<BridgeWasmModule>(module));

  void wire_prepare_rust_signal_stream(NativePortType port_) =>
      wasmModule.wire_prepare_rust_signal_stream(port_);

  void wire_prepare_rust_response_stream(NativePortType port_) =>
      wasmModule.wire_prepare_rust_response_stream(port_);

  void wire_prepare_rust_report_stream(NativePortType port_) =>
      wasmModule.wire_prepare_rust_report_stream(port_);

  void wire_prepare_channels(NativePortType port_) =>
      wasmModule.wire_prepare_channels(port_);

  void wire_check_rust_streams(NativePortType port_) =>
      wasmModule.wire_check_rust_streams(port_);

  void wire_start_rust_logic(NativePortType port_) =>
      wasmModule.wire_start_rust_logic(port_);

  void wire_stop_rust_logic(NativePortType port_) =>
      wasmModule.wire_stop_rust_logic(port_);

  void wire_request_to_rust(
          NativePortType port_, List<dynamic> request_unique) =>
      wasmModule.wire_request_to_rust(port_, request_unique);
}
