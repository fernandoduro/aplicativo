import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'encerrar_conta_widget.dart' show EncerrarContaWidget;
import 'package:flutter/material.dart';

class EncerrarContaModel extends FlutterFlowModel<EncerrarContaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for motivo widget.
  FocusNode? motivoFocusNode;
  TextEditingController? motivoTextController;
  String? Function(BuildContext, String?)? motivoTextControllerValidator;
  // Stores action output result for [Backend Call - API (EncerrarConta)] action in Button widget.
  ApiCallResponse? apiResultqnl;
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
    motivoFocusNode?.dispose();
    motivoTextController?.dispose();

    footerModel.dispose();
  }
}
