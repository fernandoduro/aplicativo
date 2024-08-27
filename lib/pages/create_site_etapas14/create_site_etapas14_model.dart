import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapas14_widget.dart' show CreateSiteEtapas14Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapas14Model
    extends FlutterFlowModel<CreateSiteEtapas14Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Specializations)] action in CreateSiteEtapas14 widget.
  ApiCallResponse? apiResutServices;
  // Stores action output result for [Backend Call - API (Specializations)] action in CreateSiteEtapas14 widget.
  ApiCallResponse? apiResutServicesNotExists;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for busca widget.
  FocusNode? buscaFocusNode;
  TextEditingController? buscaTextController;
  String? Function(BuildContext, String?)? buscaTextControllerValidator;
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

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
    buscaFocusNode?.dispose();
    buscaTextController?.dispose();

    footerModel.dispose();
  }
}
