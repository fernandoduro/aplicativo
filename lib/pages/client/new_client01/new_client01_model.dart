import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_client01_widget.dart' show NewClient01Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NewClient01Model extends FlutterFlowModel<NewClient01Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getClientByID)] action in NewClient01 widget.
  ApiCallResponse? apiResultEditClient;
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
  final whatsappMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for status widget.
  bool? statusValue;
  // Stores action output result for [Backend Call - API (editClient)] action in Button widget.
  ApiCallResponse? apiResultEditClients;
  // Stores action output result for [Backend Call - API (CreateClient)] action in Button widget.
  ApiCallResponse? apiResultuit;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    nomeTextControllerValidator = _nomeTextControllerValidator;
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    whatsappFocusNode?.dispose();
    whatsappTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
