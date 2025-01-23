import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
  ///  Local state fields for this page.

  dynamic editUser;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Categories)] action in EditarPerfil widget.
  ApiCallResponse? apiResultCategories;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  String? _whatsappTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for genero widget.
  String? generoValue;
  FormFieldController<String>? generoValueController;
  // State field(s) for Profissao widget.
  String? profissaoValue;
  FormFieldController<String>? profissaoValueController;
  // State field(s) for Codigo widget.
  FocusNode? codigoFocusNode;
  TextEditingController? codigoTextController;
  String? Function(BuildContext, String?)? codigoTextControllerValidator;
  String? _codigoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateProfessional)] action in Button widget.
  ApiCallResponse? apiResult2;
  // Stores action output result for [Backend Call - API (UpdateProfessional)] action in Button widget.
  ApiCallResponse? apiResult;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    nomeTextControllerValidator = _nomeTextControllerValidator;
    whatsappTextControllerValidator = _whatsappTextControllerValidator;
    codigoTextControllerValidator = _codigoTextControllerValidator;
    passwordVisibility = false;
    confirmPasswordVisibility = false;
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    whatsappFocusNode?.dispose();
    whatsappTextController?.dispose();

    codigoFocusNode?.dispose();
    codigoTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    footerModel.dispose();
  }
}
