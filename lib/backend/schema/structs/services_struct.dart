// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesStruct extends BaseStruct {
  ServicesStruct({
    int? isSingularClient,
  }) : _isSingularClient = isSingularClient;

  // "is_singular_client" field.
  int? _isSingularClient;
  int get isSingularClient => _isSingularClient ?? 0;
  set isSingularClient(int? val) => _isSingularClient = val;

  void incrementIsSingularClient(int amount) =>
      isSingularClient = isSingularClient + amount;

  bool hasIsSingularClient() => _isSingularClient != null;

  static ServicesStruct fromMap(Map<String, dynamic> data) => ServicesStruct(
        isSingularClient: castToType<int>(data['is_singular_client']),
      );

  static ServicesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ServicesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'is_singular_client': _isSingularClient,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'is_singular_client': serializeParam(
          _isSingularClient,
          ParamType.int,
        ),
      }.withoutNulls;

  static ServicesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServicesStruct(
        isSingularClient: deserializeParam(
          data['is_singular_client'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ServicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServicesStruct &&
        isSingularClient == other.isSingularClient;
  }

  @override
  int get hashCode => const ListEquality().hash([isSingularClient]);
}

ServicesStruct createServicesStruct({
  int? isSingularClient,
}) =>
    ServicesStruct(
      isSingularClient: isSingularClient,
    );
