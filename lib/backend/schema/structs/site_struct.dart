// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SiteStruct extends BaseStruct {
  SiteStruct({
    Color? color,
  }) : _color = color;

  // "color" field.
  Color? _color;
  Color get color => _color ?? const Color(0xFF334545);
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  static SiteStruct fromMap(Map<String, dynamic> data) => SiteStruct(
        color: getSchemaColor(data['color']),
      );

  static SiteStruct? maybeFromMap(dynamic data) =>
      data is Map ? SiteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static SiteStruct fromSerializableMap(Map<String, dynamic> data) =>
      SiteStruct(
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'SiteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SiteStruct && color == other.color;
  }

  @override
  int get hashCode => const ListEquality().hash([color]);
}

SiteStruct createSiteStruct({
  Color? color,
}) =>
    SiteStruct(
      color: color,
    );
