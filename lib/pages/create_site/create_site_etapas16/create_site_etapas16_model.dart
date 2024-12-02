import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapas16_widget.dart' show CreateSiteEtapas16Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapas16Model
    extends FlutterFlowModel<CreateSiteEtapas16Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for online widget.
  bool? onlineValue;
  // State field(s) for presencial widget.
  bool? presencialValue;
  // State field(s) for domiciliar widget.
  bool? domiciliarValue;
  // Stores action output result for [Custom Action - addPersonServices] action in Button widget.
  String? servicesResult;
  // Stores action output result for [Backend Call - API (UpdateSite)] action in Button widget.
  ApiCallResponse? updatesite17;
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
