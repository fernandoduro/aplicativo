import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/services/text_field_hours/text_field_hours_widget.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'services05_widget.dart' show Services05Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Services05Model extends FlutterFlowModel<Services05Widget> {
  ///  Local state fields for this page.

  dynamic packagesAdd;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetUser)] action in Services05 widget.
  ApiCallResponse? apiResultjh62;
  // Stores action output result for [Custom Action - convertStringToJson] action in Services05 widget.
  dynamic? disponibility;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // Stores action output result for [Custom Action - removeJsonToJsonAction] action in IconButton widget.
  dynamic? removeWork;
  // Stores action output result for [Custom Action - addJsonToJsonAction] action in IconButton widget.
  dynamic? hoursAdd;
  // Stores action output result for [Custom Action - addJsonToJsonAction] action in IconButton widget.
  dynamic? hoursAdd2;
  // Stores action output result for [Backend Call - API (addHoursWorkProfessionals)] action in Button widget.
  ApiCallResponse? apiResultlsp;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    footerWhiteModel.dispose();
  }
}
