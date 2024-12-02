// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConvitesStruct extends BaseStruct {
  ConvitesStruct({
    int? usedCount,
  }) : _usedCount = usedCount;

  // "used_count" field.
  int? _usedCount;
  int get usedCount => _usedCount ?? 0;
  set usedCount(int? val) => _usedCount = val;

  void incrementUsedCount(int amount) => usedCount = usedCount + amount;

  bool hasUsedCount() => _usedCount != null;

  static ConvitesStruct fromMap(Map<String, dynamic> data) => ConvitesStruct(
        usedCount: castToType<int>(data['used_count']),
      );

  static ConvitesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ConvitesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'used_count': _usedCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'used_count': serializeParam(
          _usedCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static ConvitesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConvitesStruct(
        usedCount: deserializeParam(
          data['used_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ConvitesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConvitesStruct && usedCount == other.usedCount;
  }

  @override
  int get hashCode => const ListEquality().hash([usedCount]);
}

ConvitesStruct createConvitesStruct({
  int? usedCount,
}) =>
    ConvitesStruct(
      usedCount: usedCount,
    );
