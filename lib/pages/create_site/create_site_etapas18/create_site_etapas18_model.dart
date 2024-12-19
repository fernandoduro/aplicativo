import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapas18_widget.dart' show CreateSiteEtapas18Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapas18Model
    extends FlutterFlowModel<CreateSiteEtapas18Widget> {
  ///  Local state fields for this page.

  int? totalHours = 0;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // Stores action output result for [Custom Action - removeJsonToJsonAction] action in IconButton widget.
  dynamic removeWork;
  // Stores action output result for [Custom Action - addJsonToJsonAction] action in IconButton widget.
  dynamic hoursAdd;
  // Stores action output result for [Custom Action - addJsonToJsonAction] action in IconButton widget.
  dynamic hoursAdd2;
  // Stores action output result for [Backend Call - API (addHoursWorkProfessionals)] action in Button widget.
  ApiCallResponse? apiResultlsp2;
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
