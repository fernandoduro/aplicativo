import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'insights_widget.dart' show InsightsWidget;
import 'package:flutter/material.dart';

class InsightsModel extends FlutterFlowModel<InsightsWidget> {
  ///  Local state fields for this page.

  String? generalinfo;

  String? lastweekinfo;

  String? siteinfo;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (insights)] action in Insights widget.
  ApiCallResponse? apiResulte71;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
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
