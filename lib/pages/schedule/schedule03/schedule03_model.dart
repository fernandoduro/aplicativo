import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'schedule03_widget.dart' show Schedule03Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Schedule03Model extends FlutterFlowModel<Schedule03Widget> {
  ///  Local state fields for this page.

  int? editPackage = 0;

  List<int> idsClientsSchedule = [];
  void addToIdsClientsSchedule(int item) => idsClientsSchedule.add(item);
  void removeFromIdsClientsSchedule(int item) =>
      idsClientsSchedule.remove(item);
  void removeAtIndexFromIdsClientsSchedule(int index) =>
      idsClientsSchedule.removeAt(index);
  void insertAtIndexInIdsClientsSchedule(int index, int item) =>
      idsClientsSchedule.insert(index, item);
  void updateIdsClientsScheduleAtIndex(int index, Function(int) updateFn) =>
      idsClientsSchedule[index] = updateFn(idsClientsSchedule[index]);

  dynamic listClients;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (ListAllClients)] action in Schedule03 widget.
  ApiCallResponse? apiResultox6;
  // Stores action output result for [Custom Action - filterJsonNotINAction] action in Schedule03 widget.
  dynamic resultFilterAction;
  // Stores action output result for [Backend Call - API (ListAllClients)] action in Schedule03 widget.
  ApiCallResponse? apiResultox6b;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for tipocompromisso widget.
  String? tipocompromissoValue;
  FormFieldController<String>? tipocompromissoValueController;
  // State field(s) for clientes widget.
  int? clientesValue;
  FormFieldController<int>? clientesValueController;
  // State field(s) for clientesEmpty widget.
  String? clientesEmptyValue;
  FormFieldController<String>? clientesEmptyValueController;
  // State field(s) for servicos widget.
  int? servicosValue;
  FormFieldController<int>? servicosValueController;
  // State field(s) for servicosEmpty widget.
  String? servicosEmptyValue;
  FormFieldController<String>? servicosEmptyValueController;
  // State field(s) for situacaoDropDown widget.
  String? situacaoDropDownValue;
  FormFieldController<String>? situacaoDropDownValueController;
  // State field(s) for data widget.
  FocusNode? dataFocusNode;
  TextEditingController? dataTextController;
  final dataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataTextControllerValidator;
  // State field(s) for hora widget.
  FocusNode? horaFocusNode;
  TextEditingController? horaTextController;
  final horaMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? horaTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for status widget.
  bool? statusValue;
  // State field(s) for prazoRecorrente widget.
  String? prazoRecorrenteValue;
  FormFieldController<String>? prazoRecorrenteValueController;
  // Stores action output result for [Backend Call - API (AddClientAppointment)] action in Button widget.
  ApiCallResponse? apiResultiw1;
  // Stores action output result for [Backend Call - API (UpdateAppointment)] action in Button widget.
  ApiCallResponse? apiResultvdr;
  // Stores action output result for [Backend Call - API (CreateAppointment)] action in Button widget.
  ApiCallResponse? apiResulttd1;
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
    dataFocusNode?.dispose();
    dataTextController?.dispose();

    horaFocusNode?.dispose();
    horaTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
