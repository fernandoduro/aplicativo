import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapa1_widget.dart' show CreateSiteEtapa1Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapa1Model extends FlutterFlowModel<CreateSiteEtapa1Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetUser)] action in CreateSiteEtapa1 widget.
  ApiCallResponse? apiResult;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
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
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    footerModel.dispose();
  }
}
