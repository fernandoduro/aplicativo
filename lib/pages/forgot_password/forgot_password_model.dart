import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cellphone widget.
  FocusNode? cellphoneFocusNode;
  TextEditingController? cellphoneTextController;
  String? Function(BuildContext, String?)? cellphoneTextControllerValidator;
  String? _cellphoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cellphoneTextControllerValidator = _cellphoneTextControllerValidator;
  }

  @override
  void dispose() {
    cellphoneFocusNode?.dispose();
    cellphoneTextController?.dispose();
  }
}
