import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loyalty_history_widget.dart' show LoyaltyHistoryWidget;
import 'package:flutter/material.dart';

class LoyaltyHistoryModel extends FlutterFlowModel<LoyaltyHistoryWidget> {
  ///  Local state fields for this page.

  dynamic historys;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (List clients club statement)] action in LoyaltyHistory widget.
  ApiCallResponse? clientsStatement;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for status widget.
  bool? statusValue;
  // Stores action output result for [Backend Call - API (Save config club activate)] action in status widget.
  ApiCallResponse? apiResultndw2;
  // Stores action output result for [Backend Call - API (List clients club statement)] action in status widget.
  ApiCallResponse? clientsStatement2;
  // Stores action output result for [Backend Call - API (Save config club activate)] action in status widget.
  ApiCallResponse? apiResultndw2Copy;
  // Stores action output result for [Backend Call - API (List clients club statement)] action in status widget.
  ApiCallResponse? clientsStatement3;
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
