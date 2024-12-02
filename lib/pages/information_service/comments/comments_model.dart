import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'comments_widget.dart' show CommentsWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:record/record.dart';

class CommentsModel extends FlutterFlowModel<CommentsWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  bool isShowPlayer = false;

  String? audioBase64;

  int? idComment;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetAppointmentsByID)] action in Comments widget.
  ApiCallResponse? apiResult8nd;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for clientes widget.
  int? clientesValue;
  FormFieldController<int>? clientesValueController;
  // State field(s) for servicos widget.
  int? servicosValue1;
  FormFieldController<int>? servicosValueController1;
  // State field(s) for servicos widget.
  String? servicosValue2;
  FormFieldController<String>? servicosValueController2;
  // State field(s) for data widget.
  FocusNode? dataFocusNode;
  TextEditingController? dataTextController;
  final dataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataTextControllerValidator;
  String? _dataTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for hora widget.
  FocusNode? horaFocusNode;
  TextEditingController? horaTextController;
  final horaMask = MaskTextInputFormatter(mask: '##:##');
  String? Function(BuildContext, String?)? horaTextControllerValidator;
  // State field(s) for comentario widget.
  FocusNode? comentarioFocusNode;
  TextEditingController? comentarioTextController;
  String? Function(BuildContext, String?)? comentarioTextControllerValidator;
  AudioRecorder? audioRecorder;
  String? recording2;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Custom Action - convertAudioPathToBase64] action in Button widget.
  String? base64Sound;
  // Stores action output result for [Backend Call - API (AddComments)] action in Button widget.
  ApiCallResponse? apiResultqa9;
  // Stores action output result for [Backend Call - API (AddComments)] action in Button widget.
  ApiCallResponse? apiResultqa9Audio;
  // Stores action output result for [Backend Call - API (UpdateComments)] action in Button widget.
  ApiCallResponse? apiResultqa93;
  // Stores action output result for [Backend Call - API (UpdateComments)] action in Button widget.
  ApiCallResponse? apiResultqa9Audio2;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    dataTextControllerValidator = _dataTextControllerValidator;
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    dataFocusNode?.dispose();
    dataTextController?.dispose();

    horaFocusNode?.dispose();
    horaTextController?.dispose();

    comentarioFocusNode?.dispose();
    comentarioTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
