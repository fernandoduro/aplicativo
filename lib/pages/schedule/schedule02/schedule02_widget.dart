import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'schedule02_model.dart';
export 'schedule02_model.dart';

class Schedule02Widget extends StatefulWidget {
  const Schedule02Widget({
    super.key,
    this.dateSelected,
    this.hourSelected,
    required this.scheduleSelected,
    this.scheduleJson,
  });

  final DateTime? dateSelected;
  final String? hourSelected;
  final dynamic scheduleSelected;
  final dynamic scheduleJson;

  @override
  State<Schedule02Widget> createState() => _Schedule02WidgetState();
}

class _Schedule02WidgetState extends State<Schedule02Widget> {
  late Schedule02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Schedule02Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Schedule02'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SCHEDULE02_PAGE_Schedule02_ON_INIT_STATE');
      logFirebaseEvent('Schedule02_update_page_state');
      _model.scheduleJsonPage = widget.scheduleSelected;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: wrapWithModel(
                                      model: _model.headerHelpModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const HeaderHelpWidget(),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.67,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: 123.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            1.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        RichText(
                                                                      textScaler:
                                                                          MediaQuery.of(context)
                                                                              .textScaler,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                dateTimeFormat(
                                                                              "EEEE, d",
                                                                              widget.dateSelected,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w900,
                                                                                ),
                                                                          ),
                                                                          const TextSpan(
                                                                            text:
                                                                                ' de ',
                                                                            style:
                                                                                TextStyle(),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                dateTimeFormat(
                                                                              "LLLL",
                                                                              widget.dateSelected,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            style:
                                                                                const TextStyle(),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w900,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.9,
                                                                  height: 70.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                child: Text(
                                                                                  widget.hourSelected!,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        fontSize: 22.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 5.0,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                if ((getJsonField(
                                                                                          widget.scheduleSelected,
                                                                                          r'''$.schedule.id''',
                                                                                        ) !=
                                                                                        null) &&
                                                                                    (functions
                                                                                            .convertStrintToInt(getJsonField(
                                                                                              widget.scheduleSelected,
                                                                                              r'''$.schedule.service.is_singular_client''',
                                                                                            ).toString())
                                                                                            .toString() ==
                                                                                        '0'))
                                                                                  RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Disponíveis: ',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: (int.parse(getJsonField(
                                                                                                    widget.scheduleSelected,
                                                                                                    r'''$.schedule.service.max_clients''',
                                                                                                  ).toString()) -
                                                                                                  int.parse(functions
                                                                                                      .lengthElements(getJsonField(
                                                                                                        widget.scheduleSelected,
                                                                                                        r'''$.schedule.professional_client''',
                                                                                                        true,
                                                                                                      ))
                                                                                                      .toString()))
                                                                                              .toString(),
                                                                                          style: const TextStyle(),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ' de ',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: getJsonField(
                                                                                            widget.scheduleSelected,
                                                                                            r'''$.schedule.service.max_clients''',
                                                                                          ).toString(),
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: functions.formatArrayintoCommaAeparatedString(getJsonField(
                                                                                          widget.scheduleSelected,
                                                                                          r'''$.schedule.professional_client[*].client.name''',
                                                                                        ).toString())!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      )
                                                                                    ],
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w900,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      1.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'SCHEDULE02_PAGE_Column_kwfzerfe_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Row_update_page_state');
                                                                          _model.idsClientsSchedule =
                                                                              [];
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Row_alert_dialog');
                                                                          var confirmDialogResponse = await showDialog<bool>(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return WebViewAware(
                                                                                    child: AlertDialog(
                                                                                      content: const Text('Deseja excluir todos os cliente desse agendamento?'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                          child: const Text('Cancelar'),
                                                                                        ),
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                          child: const Text('Confirmar'),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ) ??
                                                                              false;
                                                                          if (confirmDialogResponse) {
                                                                            if (functions
                                                                                    .convertStrintToInt(getJsonField(
                                                                                      widget.scheduleSelected,
                                                                                      r'''$.schedule.recurrent''',
                                                                                    ).toString())
                                                                                    .toString() ==
                                                                                '1') {
                                                                              logFirebaseEvent('Row_alert_dialog');
                                                                              confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return WebViewAware(
                                                                                        child: AlertDialog(
                                                                                          content: const Text('Deseja excluir apenas o agendamento de hoje ou também os futuros deste cliente neste horário?'),
                                                                                          actions: [
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                              child: const Text('Apenas hoje'),
                                                                                            ),
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                              child: const Text('Também os futuros'),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ) ??
                                                                                  false;
                                                                              if (confirmDialogResponse) {
                                                                                logFirebaseEvent('Row_backend_call');
                                                                                _model.apiResult9co212 = await APIOficialGroup.deleteAppoitmentCall.call(
                                                                                  authToken: currentAuthenticationToken,
                                                                                  idAppointment: getJsonField(
                                                                                    widget.scheduleJson,
                                                                                    r'''$.id''',
                                                                                  ).toString(),
                                                                                  date: getJsonField(
                                                                                    widget.scheduleSelected,
                                                                                    r'''$.schedule.scheduled_at''',
                                                                                  ).toString(),
                                                                                );

                                                                                if ((_model.apiResult9co212?.succeeded ?? true)) {
                                                                                  logFirebaseEvent('Row_show_snack_bar');
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Cliente excluído com sucesso.',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed('Schedule01');
                                                                                } else {
                                                                                  logFirebaseEvent('Row_show_snack_bar');
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Erro ao excluir um cliente. Tente novamente.',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              } else {
                                                                                logFirebaseEvent('Row_backend_call');
                                                                                _model.apiResult9co223 = await APIOficialGroup.deleteAppoitmentCall.call(
                                                                                  authToken: currentAuthenticationToken,
                                                                                  idAppointment: getJsonField(
                                                                                    widget.scheduleJson,
                                                                                    r'''$.id''',
                                                                                  ).toString(),
                                                                                  date: functions.concateStrings(
                                                                                      functions.concateStrings(
                                                                                          dateTimeFormat(
                                                                                            "y-M-d ",
                                                                                            widget.dateSelected,
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ),
                                                                                          widget.hourSelected),
                                                                                      ':00'),
                                                                                );

                                                                                if ((_model.apiResult9co223?.succeeded ?? true)) {
                                                                                  logFirebaseEvent('Row_show_snack_bar');
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Cliente excluído com sucesso.',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed('Schedule01');
                                                                                } else {
                                                                                  logFirebaseEvent('Row_show_snack_bar');
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Erro ao excluir um cliente. Tente novamente.',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                    ),
                                                                                  );
                                                                                }
                                                                              }
                                                                            } else {
                                                                              logFirebaseEvent('Row_backend_call');
                                                                              _model.apiResult9co23232 = await APIOficialGroup.deleteAppoitmentCall.call(
                                                                                authToken: currentAuthenticationToken,
                                                                                idAppointment: getJsonField(
                                                                                  widget.scheduleJson,
                                                                                  r'''$.id''',
                                                                                ).toString(),
                                                                                date: functions.concateStrings(
                                                                                    functions.concateStrings(
                                                                                        dateTimeFormat(
                                                                                          "y-M-d ",
                                                                                          widget.dateSelected,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        widget.hourSelected),
                                                                                    ':00'),
                                                                              );

                                                                              if ((_model.apiResult9co23232?.succeeded ?? true)) {
                                                                                logFirebaseEvent('Row_show_snack_bar');
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Cliente excluído com sucesso.',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                logFirebaseEvent('Row_navigate_to');

                                                                                context.pushNamed('Schedule01');
                                                                              } else {
                                                                                logFirebaseEvent('Row_show_snack_bar');
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Erro ao excluir um cliente. Tente novamente.',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                              }
                                                                            }
                                                                          }

                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Icon(
                                                                              Icons.delete_sharp,
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              size: 24.0,
                                                                            ),
                                                                            Text(
                                                                              'Excluir todos os clientes ',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if ((int.parse(getJsonField(
                                                                                    widget.scheduleSelected,
                                                                                    r'''$.schedule.service.max_clients''',
                                                                                  ).toString()) -
                                                                                  int.parse(functions
                                                                                      .lengthElements(getJsonField(
                                                                                        widget.scheduleSelected,
                                                                                        r'''$.schedule.professional_client''',
                                                                                        true,
                                                                                      ))
                                                                                      .toString()))
                                                                              .toString() !=
                                                                          '0')
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              1.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('SCHEDULE02_PAGE_Text_thhg2qpa_ON_TAP');
                                                                              logFirebaseEvent('Text_navigate_to');

                                                                              context.pushNamed(
                                                                                'Schedule03',
                                                                                queryParameters: {
                                                                                  'existAppointment': serializeParam(
                                                                                    true,
                                                                                    ParamType.bool,
                                                                                  ),
                                                                                  'scheduleJson': serializeParam(
                                                                                    widget.scheduleJson,
                                                                                    ParamType.JSON,
                                                                                  ),
                                                                                  'dateSelected': serializeParam(
                                                                                    widget.dateSelected,
                                                                                    ParamType.DateTime,
                                                                                  ),
                                                                                  'hourSelected': serializeParam(
                                                                                    widget.hourSelected,
                                                                                    ParamType.String,
                                                                                  ),
                                                                                  'isAddNewClient': serializeParam(
                                                                                    true,
                                                                                    ParamType.bool,
                                                                                  ),
                                                                                  'situacao': serializeParam(
                                                                                    'confirmed',
                                                                                    ParamType.String,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              '+ Novo',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final schedule =
                                                                        functions
                                                                            .handleNullList(getJsonField(
                                                                              _model.scheduleJsonPage,
                                                                              r'''$.schedule.professional_client''',
                                                                            ))
                                                                            .toList();

                                                                    return Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          schedule
                                                                              .length,
                                                                          (scheduleIndex) {
                                                                        final scheduleItem =
                                                                            schedule[scheduleIndex];
                                                                        return Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              8.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              borderRadius: BorderRadius.circular(16.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(16.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Cliente',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w800,
                                                                                            ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('SCHEDULE02_PAGE_Icon_4ynrqshm_ON_TAP');
                                                                                              logFirebaseEvent('Icon_navigate_to');

                                                                                              context.pushNamed(
                                                                                                'Comments',
                                                                                                queryParameters: {
                                                                                                  'idAppointment': serializeParam(
                                                                                                    getJsonField(
                                                                                                      widget.scheduleJson,
                                                                                                      r'''$.id''',
                                                                                                    ),
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                  'idClient': serializeParam(
                                                                                                    getJsonField(
                                                                                                      scheduleItem,
                                                                                                      r'''$.client.id''',
                                                                                                    ),
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.comment,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('SCHEDULE02_PAGE_Icon_r5x9ab9a_ON_TAP');
                                                                                              logFirebaseEvent('Icon_navigate_to');

                                                                                              context.pushNamed(
                                                                                                'Schedule03',
                                                                                                queryParameters: {
                                                                                                  'existAppointment': serializeParam(
                                                                                                    true,
                                                                                                    ParamType.bool,
                                                                                                  ),
                                                                                                  'scheduleJson': serializeParam(
                                                                                                    widget.scheduleJson,
                                                                                                    ParamType.JSON,
                                                                                                  ),
                                                                                                  'dateSelected': serializeParam(
                                                                                                    widget.dateSelected,
                                                                                                    ParamType.DateTime,
                                                                                                  ),
                                                                                                  'hourSelected': serializeParam(
                                                                                                    widget.hourSelected,
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                  'isAddNewClient': serializeParam(
                                                                                                    false,
                                                                                                    ParamType.bool,
                                                                                                  ),
                                                                                                  'situacao': serializeParam(
                                                                                                    getJsonField(
                                                                                                      scheduleItem,
                                                                                                      r'''$.pivot.confirmation''',
                                                                                                    ).toString(),
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                  'idClientSelected': serializeParam(
                                                                                                    getJsonField(
                                                                                                      scheduleItem,
                                                                                                      r'''$.client.id''',
                                                                                                    ),
                                                                                                    ParamType.int,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.edit,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('SCHEDULE02_PAGE_Icon_duhez986_ON_TAP');
                                                                                              logFirebaseEvent('Icon_update_page_state');
                                                                                              _model.idsClientsSchedule = [];
                                                                                              safeSetState(() {});
                                                                                              logFirebaseEvent('Icon_update_page_state');
                                                                                              _model.idsClientsSchedule = getJsonField(
                                                                                                widget.scheduleJson,
                                                                                                r'''$.professional_client[*].client.id''',
                                                                                                true,
                                                                                              )!
                                                                                                  .toList()
                                                                                                  .cast<int>();
                                                                                              safeSetState(() {});
                                                                                              logFirebaseEvent('Icon_update_page_state');
                                                                                              _model.removeFromIdsClientsSchedule(getJsonField(
                                                                                                scheduleItem,
                                                                                                r'''$.client.id''',
                                                                                              ));
                                                                                              safeSetState(() {});
                                                                                              logFirebaseEvent('Icon_alert_dialog');
                                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
                                                                                                      return WebViewAware(
                                                                                                        child: AlertDialog(
                                                                                                          content: const Text('Deseja excluir esse cliente?'),
                                                                                                          actions: [
                                                                                                            TextButton(
                                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                              child: const Text('Cancelar'),
                                                                                                            ),
                                                                                                            TextButton(
                                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                              child: const Text('Confirmar'),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ) ??
                                                                                                  false;
                                                                                              if (confirmDialogResponse) {
                                                                                                if (_model.idsClientsSchedule.length.toString() != '0') {
                                                                                                  logFirebaseEvent('Icon_backend_call');
                                                                                                  _model.apiResultevf = await APIOficialGroup.putAppointmentsProfessionalCall.call(
                                                                                                    idAppointment: getJsonField(
                                                                                                      widget.scheduleJson,
                                                                                                      r'''$.id''',
                                                                                                    ).toString(),
                                                                                                    authToken: currentAuthenticationToken,
                                                                                                    professionalClientIdList: _model.idsClientsSchedule,
                                                                                                  );

                                                                                                  if ((_model.apiResultevf?.succeeded ?? true)) {
                                                                                                    logFirebaseEvent('Icon_show_snack_bar');
                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                      SnackBar(
                                                                                                        content: Text(
                                                                                                          'Cliente excluído com sucesso.',
                                                                                                          style: TextStyle(
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          ),
                                                                                                        ),
                                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                      ),
                                                                                                    );
                                                                                                    logFirebaseEvent('Icon_custom_action');
                                                                                                    await actions.removeJsonToJsonAction(
                                                                                                      getJsonField(
                                                                                                        _model.scheduleJsonPage,
                                                                                                        r'''$.schedule''',
                                                                                                      ),
                                                                                                      scheduleIndex,
                                                                                                      'professional_client',
                                                                                                    );
                                                                                                    logFirebaseEvent('Icon_custom_action');
                                                                                                    await actions.removeJsonToJsonAction(
                                                                                                      getJsonField(
                                                                                                        widget.scheduleJson,
                                                                                                        r'''$''',
                                                                                                      ),
                                                                                                      scheduleIndex,
                                                                                                      'professional_client',
                                                                                                    );
                                                                                                  } else {
                                                                                                    logFirebaseEvent('Icon_show_snack_bar');
                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                      SnackBar(
                                                                                                        content: Text(
                                                                                                          'Erro ao excluir um cliente. Tente novamente.',
                                                                                                          style: TextStyle(
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          ),
                                                                                                        ),
                                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                } else {
                                                                                                  logFirebaseEvent('Icon_backend_call');
                                                                                                  _model.apiResult9co = await APIOficialGroup.deleteAppoitmentCall.call(
                                                                                                    authToken: currentAuthenticationToken,
                                                                                                    idAppointment: getJsonField(
                                                                                                      widget.scheduleJson,
                                                                                                      r'''$.id''',
                                                                                                    ).toString(),
                                                                                                  );

                                                                                                  if ((_model.apiResult9co?.succeeded ?? true)) {
                                                                                                    logFirebaseEvent('Icon_show_snack_bar');
                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                      SnackBar(
                                                                                                        content: Text(
                                                                                                          'Cliente excluído com sucesso.',
                                                                                                          style: TextStyle(
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          ),
                                                                                                        ),
                                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                      ),
                                                                                                    );
                                                                                                    logFirebaseEvent('Icon_navigate_to');

                                                                                                    context.pushNamed('Schedule01');
                                                                                                  } else {
                                                                                                    logFirebaseEvent('Icon_show_snack_bar');
                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                      SnackBar(
                                                                                                        content: Text(
                                                                                                          'Erro ao excluir um cliente. Tente novamente.',
                                                                                                          style: TextStyle(
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          ),
                                                                                                        ),
                                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                }
                                                                                              }

                                                                                              safeSetState(() {});
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.delete_sharp,
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 15.0)),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 5.0,
                                                                                                height: 71.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        getJsonField(
                                                                                                          scheduleItem,
                                                                                                          r'''$.client.name''',
                                                                                                        ).toString(),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              fontSize: 17.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w900,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Situação: ',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Manrope',
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.bold,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      () {
                                                                                                        if (functions.convertJsonToString(getJsonField(
                                                                                                              scheduleItem,
                                                                                                              r'''$.pivot.confirmation''',
                                                                                                            )) ==
                                                                                                            'pending') {
                                                                                                          return 'Pendente';
                                                                                                        } else if (functions.convertJsonToString(getJsonField(
                                                                                                              scheduleItem,
                                                                                                              r'''$.pivot.confirmation''',
                                                                                                            )) ==
                                                                                                            'confirmed') {
                                                                                                          return 'Confirmado';
                                                                                                        } else if (functions.convertJsonToString(getJsonField(
                                                                                                              scheduleItem,
                                                                                                              r'''$.pivot.confirmation''',
                                                                                                            )) ==
                                                                                                            'canceled') {
                                                                                                          return 'Cancelado';
                                                                                                        } else {
                                                                                                          return 'Ausente';
                                                                                                        }
                                                                                                      }(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Manrope',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      if (getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.client.birthday''',
                                                                                                          ) !=
                                                                                                          null)
                                                                                                        Align(
                                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 15.0,
                                                                                                              height: 15.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      if (getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.client.birthday''',
                                                                                                          ) !=
                                                                                                          null)
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                          child: Text(
                                                                                                            functions.formatDate(functions.removeNullString(getJsonField(
                                                                                                              scheduleItem,
                                                                                                              r'''$.client.birthday''',
                                                                                                            ).toString()))!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Manrope',
                                                                                                                  fontSize: 12.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      if (getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.client.cpf''',
                                                                                                          ) !=
                                                                                                          null)
                                                                                                        Align(
                                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 15.0,
                                                                                                              height: 15.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      if (getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.client.cpf''',
                                                                                                          ) !=
                                                                                                          null)
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                          child: Text(
                                                                                                            functions.removeNullString(getJsonField(
                                                                                                              scheduleItem,
                                                                                                              r'''$.client.cpf''',
                                                                                                            ).toString())!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Manrope',
                                                                                                                  fontSize: 12.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      if (getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.client.cellphone[0]''',
                                                                                                          ) !=
                                                                                                          null)
                                                                                                        Align(
                                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 15.0,
                                                                                                              height: 15.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      if (getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.client.cellphone[0]''',
                                                                                                          ) !=
                                                                                                          null)
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                          child: Text(
                                                                                                            functions.removeNullString(getJsonField(
                                                                                                              scheduleItem,
                                                                                                              r'''$.client.cellphone[0]''',
                                                                                                            ).toString())!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Manrope',
                                                                                                                  fontSize: 12.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      if (getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.client.email[0]''',
                                                                                                          ) !=
                                                                                                          null)
                                                                                                        Align(
                                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 15.0,
                                                                                                              height: 15.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      if (getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.client.email[0]''',
                                                                                                          ) !=
                                                                                                          null)
                                                                                                        Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                          child: Text(
                                                                                                            functions.removeNullString(getJsonField(
                                                                                                              scheduleItem,
                                                                                                              r'''$.client.email[0]''',
                                                                                                            ).toString())!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: 'Manrope',
                                                                                                                  fontSize: 12.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            if (getJsonField(
                                                                                                  scheduleItem,
                                                                                                  r'''$.payment_due_date''',
                                                                                                ) !=
                                                                                                null)
                                                                                              Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Vencimento:',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w800,
                                                                                                        ),
                                                                                                  ),
                                                                                                  RichText(
                                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                                    text: TextSpan(
                                                                                                      children: [
                                                                                                        TextSpan(
                                                                                                          text: 'Dia ',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Manrope',
                                                                                                                fontSize: 12.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                              ),
                                                                                                        ),
                                                                                                        TextSpan(
                                                                                                          text: valueOrDefault<String>(
                                                                                                            functions.removeNullString(getJsonField(
                                                                                                              scheduleItem,
                                                                                                              r'''$.payment_due_date''',
                                                                                                            ).toString()),
                                                                                                            ' - ',
                                                                                                          ),
                                                                                                          style: const TextStyle(),
                                                                                                        )
                                                                                                      ],
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Manrope',
                                                                                                            fontSize: 12.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w600,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            if (getJsonField(
                                                                                                  scheduleItem,
                                                                                                  r'''$.monthly_value''',
                                                                                                ) !=
                                                                                                null)
                                                                                              Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  RichText(
                                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                                    text: TextSpan(
                                                                                                      children: [
                                                                                                        TextSpan(
                                                                                                          text: 'R\$',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Manrope',
                                                                                                                fontSize: 10.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                              ),
                                                                                                        ),
                                                                                                        TextSpan(
                                                                                                          text: functions.removeNullString(getJsonField(
                                                                                                            scheduleItem,
                                                                                                            r'''$.monthly_value''',
                                                                                                          ).toString())!,
                                                                                                          style: const TextStyle(
                                                                                                            fontWeight: FontWeight.w900,
                                                                                                            fontSize: 22.0,
                                                                                                          ),
                                                                                                        )
                                                                                                      ],
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Manrope',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }),
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: wrapWithModel(
                                          model: _model.footerModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const FooterWidget(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
