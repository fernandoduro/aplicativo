import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'convites_widget.dart' show ConvitesWidget;
import 'package:flutter/material.dart';

class ConvitesModel extends FlutterFlowModel<ConvitesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (MyInvites)] action in Convites widget.
  ApiCallResponse? apiResultnn5;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
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
