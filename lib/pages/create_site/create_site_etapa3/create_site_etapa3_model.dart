import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapa3_widget.dart' show CreateSiteEtapa3Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapa3Model extends FlutterFlowModel<CreateSiteEtapa3Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for codigo widget.
  FocusNode? codigoFocusNode;
  TextEditingController? codigoTextController;
  String? Function(BuildContext, String?)? codigoTextControllerValidator;
  // Stores action output result for [Backend Call - API (Invites)] action in Button widget.
  ApiCallResponse? apiResultsom;
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
    codigoFocusNode?.dispose();
    codigoTextController?.dispose();

    footerModel.dispose();
  }
}
