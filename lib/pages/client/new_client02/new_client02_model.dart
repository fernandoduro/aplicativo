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

  dynamic packageListAuxExists;

  dynamic packageListAuxExistFull;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getClientByID)] action in NewClient02 widget.
  ApiCallResponse? apiResultEditClientPage3;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for Pacote widget.
  String? pacoteValue;
  FormFieldController<String>? pacoteValueController;
  // Stores action output result for [Backend Call - API (PackagesById)] action in Pacote widget.
  ApiCallResponse? apiResultbn2;
  // State field(s) for PacoteEmpty widget.
  String? pacoteEmptyValue;
  FormFieldController<String>? pacoteEmptyValueController;
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

  // Stores action output result for [Validate Form] action in Button widget.
  bool? validation;
  // Stores action output result for [Backend Call - API (editClientPackages)] action in Button widget.
  ApiCallResponse? apiResult0sd2344;
  // Stores action output result for [Backend Call - API (editClientPackages)] action in Icon widget.
  ApiCallResponse? apiResult0sd44;
  // Stores action output result for [Backend Call - API (editClientPackages)] action in Button widget.
  ApiCallResponse? apiResult0sd441;
  // Stores action output result for [Backend Call - API (getClientByID)] action in Button widget.
  ApiCallResponse? apiResultEditClientPageEdit2;
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
