import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ratings_widget.dart' show RatingsWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:record/record.dart';

class RatingsModel extends FlutterFlowModel<RatingsWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  bool isShowPlayer = false;

  String? audioBase64;

  int? idRating;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for body widget.
  ScrollController? body;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for servicos widget.
  int? servicosValue;
  FormFieldController<int>? servicosValueController;
  // State field(s) for servicosEmpty widget.
  String? servicosEmptyValue;
  FormFieldController<String>? servicosEmptyValueController;
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
  String? _horaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for comentario widget.
  FocusNode? comentarioFocusNode;
  TextEditingController? comentarioTextController;
  String? Function(BuildContext, String?)? comentarioTextControllerValidator;
  String? _comentarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  AudioRecorder? audioRecorder;
  String? recording;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Custom Action - convertAudioPathToBase64] action in Button widget.
  String? base64Sound;
  // Stores action output result for [Backend Call - API (AddRatings)] action in Button widget.
  ApiCallResponse? apiResultqa9;
  // Stores action output result for [Backend Call - API (AddRatings)] action in Button widget.
  ApiCallResponse? apiResultqa9Audio;
  // Stores action output result for [Backend Call - API (UpdateRating)] action in Button widget.
  ApiCallResponse? apiResultqa93;
  // Stores action output result for [Backend Call - API (UpdateRating)] action in Button widget.
  ApiCallResponse? apiResultqa9Audio2;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    body = ScrollController();
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    dataTextControllerValidator = _dataTextControllerValidator;
    horaTextControllerValidator = _horaTextControllerValidator;
    comentarioTextControllerValidator = _comentarioTextControllerValidator;
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    body?.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    dataFocusNode?.dispose();
    dataTextController?.dispose();

    horaFocusNode?.dispose();
    horaTextController?.dispose();

    comentarioFocusNode?.dispose();
    comentarioTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
