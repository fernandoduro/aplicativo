import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'first_access_insights_widget.dart' show FirstAccessInsightsWidget;
import 'package:flutter/material.dart';

class FirstAccessInsightsModel
    extends FlutterFlowModel<FirstAccessInsightsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Settings)] action in FirstAccessInsights widget.
  ApiCallResponse? apiResult48a;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for status widget.
  bool? statusValue;
  // Stores action output result for [Backend Call - API (Disable Setting)] action in status widget.
  ApiCallResponse? apiResultndw2;
  // Stores action output result for [Backend Call - API (Enable Setting)] action in status widget.
  ApiCallResponse? apiResult4ia2;
  // Stores action output result for [Backend Call - API (insights)] action in Button widget.
  ApiCallResponse? apiResultu56;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    footerModel.dispose();
  }
}
