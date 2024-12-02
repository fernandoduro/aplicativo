import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'text_field_hours_model.dart';
export 'text_field_hours_model.dart';

class TextFieldHoursWidget extends StatefulWidget {
  const TextFieldHoursWidget({
    super.key,
    required this.valor,
    required this.hint,
    required this.indexHour,
    required this.indexDayWeek,
    required this.typeHour,
  });

  final dynamic valor;
  final String? hint;
  final int? indexHour;
  final int? indexDayWeek;
  final String? typeHour;

  @override
  State<TextFieldHoursWidget> createState() => _TextFieldHoursWidgetState();
}

class _TextFieldHoursWidgetState extends State<TextFieldHoursWidget> {
  late TextFieldHoursModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextFieldHoursModel());

    _model.textController ??=
        TextEditingController(text: widget.valor?.toString());
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        SizedBox(
          width: 120.0,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.always,
            child: SizedBox(
              width: 80.0,
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.textController',
                  const Duration(milliseconds: 2000),
                  () async {
                    logFirebaseEvent(
                        'TEXT_FIELD_HOURS_TextField_t3z4rw3h_ON_T');
                    logFirebaseEvent('TextField_custom_action');
                    await actions.refreshHourWorkAction(
                      getJsonField(
                        FFAppState().hoursWork,
                        r'''$''',
                      ),
                      widget.indexDayWeek,
                      widget.indexHour,
                      widget.typeHour,
                      _model.textController.text,
                    );
                  },
                ),
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: widget.hint,
                  hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      letterSpacing: 0.0,
                    ),
                validator: _model.textControllerValidator.asValidator(context),
                inputFormatters: [_model.textFieldMask],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
