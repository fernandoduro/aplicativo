import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'services03_widget.dart' show Services03Widget;
import 'package:flutter/material.dart';

class Services03Model extends FlutterFlowModel<Services03Widget> {
  ///  Local state fields for this page.

  int? editPackage = 0;

  int? valorMascara;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for servicos widget.
  int? servicosValue;
  FormFieldController<int>? servicosValueController;
  // State field(s) for servicosEmpty widget.
  List<String>? servicosEmptyValue;
  FormFieldController<List<String>>? servicosEmptyValueController;
  // State field(s) for recorrencia widget.
  FocusNode? recorrenciaFocusNode;
  TextEditingController? recorrenciaTextController;
  String? Function(BuildContext, String?)? recorrenciaTextControllerValidator;
  String? _recorrenciaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for valorMensal widget.
  FocusNode? valorMensalFocusNode;
  TextEditingController? valorMensalTextController;
  String? Function(BuildContext, String?)? valorMensalTextControllerValidator;
  String? _valorMensalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (CreatePackage)] action in Button widget.
  ApiCallResponse? apiResultey82;
  // Stores action output result for [Backend Call - API (UpdatePackages)] action in Button widget.
  ApiCallResponse? apiResultxos1112;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    nameTextControllerValidator = _nameTextControllerValidator;
    recorrenciaTextControllerValidator = _recorrenciaTextControllerValidator;
    valorMensalTextControllerValidator = _valorMensalTextControllerValidator;
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    recorrenciaFocusNode?.dispose();
    recorrenciaTextController?.dispose();

    valorMensalFocusNode?.dispose();
    valorMensalTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
