import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'request_widget.dart' show RequestWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class RequestModel extends FlutterFlowModel<RequestWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  bool isShowPlayer = false;

  String? audioBase64;

  int? idComment;

  List<FFUploadedFile> imagesToUpload = [];
  void addToImagesToUpload(FFUploadedFile item) => imagesToUpload.add(item);
  void removeFromImagesToUpload(FFUploadedFile item) =>
      imagesToUpload.remove(item);
  void removeAtIndexFromImagesToUpload(int index) =>
      imagesToUpload.removeAt(index);
  void insertAtIndexInImagesToUpload(int index, FFUploadedFile item) =>
      imagesToUpload.insert(index, item);
  void updateImagesToUploadAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      imagesToUpload[index] = updateFn(imagesToUpload[index]);

  List<String> images64 = [];
  void addToImages64(String item) => images64.add(item);
  void removeFromImages64(String item) => images64.remove(item);
  void removeAtIndexFromImages64(int index) => images64.removeAt(index);
  void insertAtIndexInImages64(int index, String item) =>
      images64.insert(index, item);
  void updateImages64AtIndex(int index, Function(String) updateFn) =>
      images64[index] = updateFn(images64[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for Area widget.
  String? areaValue;
  FormFieldController<String>? areaValueController;
  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - convertBase64] action in RichText widget.
  String? updatedImage;
  AudioRecorder? audioRecorder;
  String? recorderStoped;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Custom Action - convertAudioPathToBase64] action in Button widget.
  String? base64Sound;
  // Stores action output result for [Backend Call - API (Post Solicitacoes Completo)] action in Button widget.
  ApiCallResponse? resultPostSolicitacao2;
  // Stores action output result for [Backend Call - API (POST solicitations  sem descricao)] action in Button widget.
  ApiCallResponse? apiResult148;
  // Stores action output result for [Backend Call - API (POST solicitations sem audio)] action in Button widget.
  ApiCallResponse? apiResultlfg;
  // Stores action output result for [Backend Call - API (PUT Solicitacoes)] action in Icon widget.
  ApiCallResponse? apiResult2ogCopy2;
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
    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    footerWhiteModel.dispose();
  }
}
