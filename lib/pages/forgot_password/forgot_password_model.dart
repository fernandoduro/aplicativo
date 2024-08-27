import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for cellphone widget.
  FocusNode? cellphoneFocusNode;
  TextEditingController? cellphoneTextController;
  final cellphoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? cellphoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cellphoneFocusNode?.dispose();
    cellphoneTextController?.dispose();
  }
}
