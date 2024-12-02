import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/franco/footer_franco/footer_franco_widget.dart';
import 'solicitacoes_a_d_m_widget.dart' show SolicitacoesADMWidget;
import 'package:flutter/material.dart';

class SolicitacoesADMModel extends FlutterFlowModel<SolicitacoesADMWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for FooterFranco component.
  late FooterFrancoModel footerFrancoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerFrancoModel = createModel(context, () => FooterFrancoModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    tabBarController?.dispose();
    footerFrancoModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
