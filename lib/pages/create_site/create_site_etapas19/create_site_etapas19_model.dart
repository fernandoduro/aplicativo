import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapas19_widget.dart' show CreateSiteEtapas19Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapas19Model
    extends FlutterFlowModel<CreateSiteEtapas19Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetUser)] action in CreateSiteEtapas19 widget.
  ApiCallResponse? apiResult;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  String? _whatsappTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório.';
    }

    if (val.length < 10) {
      return 'Whatsapp inválido.';
    }

    return null;
  }

  // State field(s) for Instagram widget.
  FocusNode? instagramFocusNode;
  TextEditingController? instagramTextController;
  String? Function(BuildContext, String?)? instagramTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for AgendaOnline widget.
  FocusNode? agendaOnlineFocusNode;
  TextEditingController? agendaOnlineTextController;
  String? Function(BuildContext, String?)? agendaOnlineTextControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateSite)] action in Button widget.
  ApiCallResponse? updatesite19;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    whatsappTextControllerValidator = _whatsappTextControllerValidator;
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    whatsappFocusNode?.dispose();
    whatsappTextController?.dispose();

    instagramFocusNode?.dispose();
    instagramTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    agendaOnlineFocusNode?.dispose();
    agendaOnlineTextController?.dispose();

    footerModel.dispose();
  }
}
