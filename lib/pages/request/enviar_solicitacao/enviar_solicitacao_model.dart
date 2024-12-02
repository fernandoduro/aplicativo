import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enviar_solicitacao_widget.dart' show EnviarSolicitacaoWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class EnviarSolicitacaoModel extends FlutterFlowModel<EnviarSolicitacaoWidget> {
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

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
  // Stores action output result for [Backend Call - API (Post Solicitacoes)] action in Button widget.
  ApiCallResponse? resultPostSolicitacao;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    footerModel.dispose();
  }
}
