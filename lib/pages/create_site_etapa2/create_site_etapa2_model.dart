import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapa2_widget.dart' show CreateSiteEtapa2Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapa2Model extends FlutterFlowModel<CreateSiteEtapa2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
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
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    codigoFocusNode?.dispose();
    codigoTextController?.dispose();

    footerModel.dispose();
  }
}
