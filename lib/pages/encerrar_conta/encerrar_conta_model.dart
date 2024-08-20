import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'encerrar_conta_widget.dart' show EncerrarContaWidget;
import 'package:flutter/material.dart';

class EncerrarContaModel extends FlutterFlowModel<EncerrarContaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
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
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    motivoFocusNode?.dispose();
    motivoTextController?.dispose();

    footerModel.dispose();
  }
}
