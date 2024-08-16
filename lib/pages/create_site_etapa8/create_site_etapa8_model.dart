import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapa8_widget.dart' show CreateSiteEtapa8Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapa8Model extends FlutterFlowModel<CreateSiteEtapa8Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
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
    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    footerModel.dispose();
  }
}
