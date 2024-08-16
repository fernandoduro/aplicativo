import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapa7_widget.dart' show CreateSiteEtapa7Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapa7Model extends FlutterFlowModel<CreateSiteEtapa7Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Specializations)] action in CreateSiteEtapa7 widget.
  ApiCallResponse? apiResutServices;
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
