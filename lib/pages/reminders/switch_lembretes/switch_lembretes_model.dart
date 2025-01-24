import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'switch_lembretes_widget.dart' show SwitchLembretesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SwitchLembretesModel extends FlutterFlowModel<SwitchLembretesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for status widget.
  bool? statusValue;
  // Stores action output result for [Backend Call - API (Enable Setting)] action in status widget.
  ApiCallResponse? apiResult4ia;
  // Stores action output result for [Backend Call - API (Disable Setting)] action in status widget.
  ApiCallResponse? apiResultndw;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
