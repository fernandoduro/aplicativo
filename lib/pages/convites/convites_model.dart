import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'convites_widget.dart' show ConvitesWidget;
import 'package:flutter/material.dart';

class ConvitesModel extends FlutterFlowModel<ConvitesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (MyInvites)] action in Convites widget.
  ApiCallResponse? apiResutInvites;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    footerModel.dispose();
  }
}
