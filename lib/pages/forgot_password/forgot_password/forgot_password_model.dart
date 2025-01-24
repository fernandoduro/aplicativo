import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cellphone widget.
  FocusNode? cellphoneFocusNode;
  TextEditingController? cellphoneTextController;
  final cellphoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? cellphoneTextControllerValidator;
  String? _cellphoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ForgotPassword)] action in Button widget.
  ApiCallResponse? apiResult68d;

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
