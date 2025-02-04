import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_balao/header_balao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loyalty01_widget.dart' show Loyalty01Widget;
import 'package:flutter/material.dart';

class Loyalty01Model extends FlutterFlowModel<Loyalty01Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderBalao component.
  late HeaderBalaoModel headerBalaoModel;
  // Stores action output result for [Backend Call - API (Save config club activate)] action in Button widget.
  ApiCallResponse? apiResultndw2Copy;
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
