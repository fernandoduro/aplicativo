import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_balao/header_balao_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'loyalty02_widget.dart' show Loyalty02Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Loyalty02Model extends FlutterFlowModel<Loyalty02Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderBalao component.
  late HeaderBalaoModel headerBalaoModel;
  // State field(s) for status widget.
  bool? statusValue;
  // Stores action output result for [Backend Call - API (Disable Setting)] action in status widget.
  ApiCallResponse? apiResultndw2;
  // Stores action output result for [Backend Call - API (Enable Setting)] action in status widget.
  ApiCallResponse? apiResult4ia2;
  // Stores action output result for [Backend Call - API (Save club Whatsapp)] action in Button widget.
  ApiCallResponse? apiResultksp;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerBalaoModel = createModel(context, () => HeaderBalaoModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerBalaoModel.dispose();
    footerModel.dispose();
  }
}
