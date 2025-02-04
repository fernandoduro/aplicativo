import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comments_widget.dart' show CommentsWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class CommentsModel extends FlutterFlowModel<CommentsWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  bool isShowPlayer = false;

  String? audioBase64;

  int? idComment;

  int? idService;

  String? data;

  String? hora;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetAppointmentsByID)] action in Comments widget.
  ApiCallResponse? apiResult8nd;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for body widget.
  ScrollController? body;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
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
    body = ScrollController();
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    body?.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    comentarioFocusNode?.dispose();
    comentarioTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
