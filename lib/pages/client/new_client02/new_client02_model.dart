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
import 'new_client02_widget.dart' show NewClient02Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class NewClient02Model extends FlutterFlowModel<NewClient02Widget> {
  ///  Local state fields for this page.

  dynamic packagesAdd;

  int? valorMascara;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getClientByID)] action in NewClient02 widget.
  ApiCallResponse? apiResultEditClientPage3;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for Pacote widget.
  String? pacoteValue1;
  FormFieldController<String>? pacoteValueController1;
  // Stores action output result for [Backend Call - API (PackagesById)] action in Pacote widget.
  ApiCallResponse? apiResultbn2;
  // State field(s) for Pacote widget.
  String? pacoteValue2;
  FormFieldController<String>? pacoteValueController2;
  // State field(s) for valorCobranca widget.
  FocusNode? valorCobrancaFocusNode;
  TextEditingController? valorCobrancaTextController;
  String? Function(BuildContext, String?)? valorCobrancaTextControllerValidator;
  String? _valorCobrancaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (editClientPackages)] action in Button widget.
  ApiCallResponse? apiResult0sd;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    valorCobrancaTextControllerValidator =
        _valorCobrancaTextControllerValidator;
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    valorCobrancaFocusNode?.dispose();
    valorCobrancaTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
