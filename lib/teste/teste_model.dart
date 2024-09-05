import '/flutter_flow/flutter_flow_util.dart';
import 'teste_widget.dart' show TesteWidget;
import 'package:flutter/material.dart';

class TesteModel extends FlutterFlowModel<TesteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
