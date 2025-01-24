import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_balao/header_balao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'first_access_widget.dart' show FirstAccessWidget;
import 'package:flutter/material.dart';

class FirstAccessModel extends FlutterFlowModel<FirstAccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderBalao component.
  late HeaderBalaoModel headerBalaoModel;
  // Stores action output result for [Backend Call - API (SubscriptionActiveTrial)] action in Button widget.
  ApiCallResponse? apiResult25e;
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
