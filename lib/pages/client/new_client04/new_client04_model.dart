import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_client04_widget.dart' show NewClient04Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class NewClient04Model extends FlutterFlowModel<NewClient04Widget> {
  ///  Local state fields for this page.

  dynamic dataClient;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getClientByID)] action in NewClient04 widget.
  ApiCallResponse? apiResultEditClientPage3;
  // Stores action output result for [Backend Call - API (GetUser)] action in NewClient04 widget.
  ApiCallResponse? getUserPadrao;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for dataPrimeiroAtend widget.
  FocusNode? dataPrimeiroAtendFocusNode;
  TextEditingController? dataPrimeiroAtendTextController;
  final dataPrimeiroAtendMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dataPrimeiroAtendTextControllerValidator;
  // State field(s) for vencimento widget.
  FocusNode? vencimentoFocusNode;
  TextEditingController? vencimentoTextController;
  String? Function(BuildContext, String?)? vencimentoTextControllerValidator;
  // State field(s) for nascimento widget.
  FocusNode? nascimentoFocusNode;
  TextEditingController? nascimentoTextController;
  final nascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? nascimentoTextControllerValidator;
  // State field(s) for genero widget.
  String? generoValue;
  FormFieldController<String>? generoValueController;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // Stores action output result for [Backend Call - API (editClientComplement)] action in Button widget.
  ApiCallResponse? apiResultEditClients;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    dataPrimeiroAtendFocusNode?.dispose();
    dataPrimeiroAtendTextController?.dispose();

    vencimentoFocusNode?.dispose();
    vencimentoTextController?.dispose();

    nascimentoFocusNode?.dispose();
    nascimentoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
