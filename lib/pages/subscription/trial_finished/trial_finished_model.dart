import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_balao/header_balao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'trial_finished_widget.dart' show TrialFinishedWidget;
import 'package:flutter/material.dart';

class TrialFinishedModel extends FlutterFlowModel<TrialFinishedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderBalao component.
  late HeaderBalaoModel headerBalaoModel;
  // Stores action output result for [Backend Call - API (GetUser)] action in Button widget.
  ApiCallResponse? apiUserPlanTrial;
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
