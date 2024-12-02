import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapas14_widget.dart' show CreateSiteEtapas14Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapas14Model
    extends FlutterFlowModel<CreateSiteEtapas14Widget> {
  ///  Local state fields for this page.

  bool firstAccess = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Specializations)] action in CreateSiteEtapas14 widget.
  ApiCallResponse? apiResutServices;
  // Stores action output result for [Backend Call - API (Specializations)] action in CreateSiteEtapas14 widget.
  ApiCallResponse? apiResutServicesNotExists;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for busca widget.
  FocusNode? buscaFocusNode;
  TextEditingController? buscaTextController;
  String? Function(BuildContext, String?)? buscaTextControllerValidator;
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Backend Call - API (UpdateSite)] action in Button widget.
  ApiCallResponse? updatesite14;
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
    buscaFocusNode?.dispose();
    buscaTextController?.dispose();

    footerModel.dispose();
  }
}
