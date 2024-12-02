import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loyalty02_widget.dart' show Loyalty02Widget;
import 'package:flutter/material.dart';

class Loyalty02Model extends FlutterFlowModel<Loyalty02Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
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
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    footerModel.dispose();
  }
}
