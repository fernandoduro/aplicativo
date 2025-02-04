import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password2_widget.dart' show ForgotPassword2Widget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class ForgotPassword2Model extends FlutterFlowModel<ForgotPassword2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for codigo widget.
  FocusNode? codigoFocusNode;
  TextEditingController? codigoTextController;
  String? Function(BuildContext, String?)? codigoTextControllerValidator;
  String? _codigoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 60000;
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (ConfirmCode)] action in Button widget.
  ApiCallResponse? apiResult0ni;
  // Stores action output result for [Backend Call - API (ForgotPassword)] action in RichTextSpan widget.
  ApiCallResponse? apiResultupp;

  @override
  void initState(BuildContext context) {
    codigoTextControllerValidator = _codigoTextControllerValidator;
  }

  @override
  void dispose() {
    codigoFocusNode?.dispose();
    codigoTextController?.dispose();

    timerController.dispose();
  }
}
