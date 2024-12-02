import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'switch_lembretes_model.dart';
export 'switch_lembretes_model.dart';

class SwitchLembretesWidget extends StatefulWidget {
  const SwitchLembretesWidget({
    super.key,
    required this.descricao,
    required this.ativo,
    required this.id,
  });

  final String? descricao;
  final bool? ativo;
  final int? id;

  @override
  State<SwitchLembretesWidget> createState() => _SwitchLembretesWidgetState();
}

class _SwitchLembretesWidgetState extends State<SwitchLembretesWidget> {
  late SwitchLembretesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchLembretesModel());

    _model.statusValue = widget.ativo!;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Switch.adaptive(
          value: _model.statusValue!,
          onChanged: (newValue) async {
            safeSetState(() => _model.statusValue = newValue);
            if (newValue) {
              logFirebaseEvent('SWITCH_LEMBRETES_status_ON_TOGGLE_ON');
              logFirebaseEvent('status_backend_call');
              _model.apiResult4ia =
                  await APIOficialGroup.enableSettingCall.call(
                authToken: currentAuthenticationToken,
                settingId: widget.id,
              );

              if ((_model.apiResult4ia?.succeeded ?? true)) {
                logFirebaseEvent('status_show_snack_bar');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Opção habilitada!',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: const Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
              } else {
                logFirebaseEvent('status_show_snack_bar');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Erro ao tentar habilitara  função. Tente novamente!',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: const Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).error,
                  ),
                );
              }

              safeSetState(() {});
            } else {
              logFirebaseEvent('SWITCH_LEMBRETES_status_ON_TOGGLE_OFF');
              logFirebaseEvent('status_backend_call');
              _model.apiResultndw =
                  await APIOficialGroup.disableSettingCall.call(
                authToken: currentAuthenticationToken,
                id: widget.id?.toString(),
              );

              if ((_model.apiResultndw?.succeeded ?? true)) {
                logFirebaseEvent('status_show_snack_bar');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Opção desabilitada.',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: const Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
              } else {
                logFirebaseEvent('status_show_snack_bar');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Erro ao tentar habilitara  função. Tente novamente!',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: const Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).error,
                  ),
                );
              }

              safeSetState(() {});
            }
          },
          activeColor: FlutterFlowTheme.of(context).secondaryBackground,
          activeTrackColor: FlutterFlowTheme.of(context).primary,
          inactiveTrackColor: FlutterFlowTheme.of(context).secondaryBackground,
          inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        Expanded(
          child: Text(
            widget.descricao!,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Manrope',
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}
