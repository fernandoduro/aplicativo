import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'create_site_etapas20_widget.dart' show CreateSiteEtapas20Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateSiteEtapas20Model
    extends FlutterFlowModel<CreateSiteEtapas20Widget> {
  ///  Local state fields for this page.

  dynamic domainsSelected;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Domains)] action in CreateSiteEtapas20 widget.
  ApiCallResponse? apiResultDomains;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (DomainCheck)] action in Button widget.
  ApiCallResponse? apiDomainCheckUpdate;
  // Stores action output result for [Backend Call - API (GetSite)] action in Button widget.
  ApiCallResponse? siteResult;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    footerModel.dispose();
  }
}
