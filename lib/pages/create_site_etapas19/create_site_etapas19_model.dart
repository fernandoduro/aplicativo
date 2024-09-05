import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapas19_widget.dart' show CreateSiteEtapas19Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapas19Model
    extends FlutterFlowModel<CreateSiteEtapas19Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for Whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
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
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
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
