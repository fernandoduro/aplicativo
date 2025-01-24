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
import 'package:provider/provider.dart';
import 'loyalty_history_model.dart';
export 'loyalty_history_model.dart';

class LoyaltyHistoryWidget extends StatefulWidget {
  const LoyaltyHistoryWidget({super.key});

  @override
  State<LoyaltyHistoryWidget> createState() => _LoyaltyHistoryWidgetState();
}

class _LoyaltyHistoryWidgetState extends State<LoyaltyHistoryWidget> {
  late LoyaltyHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoyaltyHistoryModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'LoyaltyHistory'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOYALTY_HISTORY_LoyaltyHistory_ON_INIT_S');
      logFirebaseEvent('LoyaltyHistory_custom_action');
      await actions.lockOrientation();
      logFirebaseEvent('LoyaltyHistory_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
      logFirebaseEvent('LoyaltyHistory_backend_call');
      _model.clientsStatement =
          await APIOficialGroup.listClientsClubStatementCall.call(
        authToken: currentAuthenticationToken,
      );

      logFirebaseEvent('LoyaltyHistory_update_page_state');
      _model.historys = functions.handleNullList(getJsonField(
        (_model.clientsStatement?.jsonBody ?? ''),
        r'''$.data''',
      ));
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Histórico de pontos',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 30.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            'Manter o programa de benefícios ativo',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                        if (true /* Warning: Trying to access variable not yet defined. */)
                                          FutureBuilder<ApiCallResponse>(
                                            future: APIOficialGroup
                                                .listClubActivateCall
                                                .call(
                                              authToken:
                                                  currentAuthenticationToken,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final statusListClubActivateResponse =
                                                  snapshot.data!;

                                              return Switch.adaptive(
                                                value: _model.statusValue ??=
                                                    () {
                                                  if (getJsonField(
                                                        statusListClubActivateResponse
                                                            .jsonBody,
                                                        r'''$.data.active''',
                                                      ) ==
                                                      null) {
                                                    return false;
                                                  } else if (getJsonField(
                                                    statusListClubActivateResponse
                                                        .jsonBody,
                                                    r'''$.data.active''',
                                                  )) {
                                                    return getJsonField(
                                                      statusListClubActivateResponse
                                                          .jsonBody,
                                                      r'''$.data.active''',
                                                    );
                                                  } else {
                                                    return false;
                                                  }
                                                }(),
                                                onChanged: (newValue) async {
                                                  safeSetState(() => _model
                                                      .statusValue = newValue);
                                                  if (newValue) {
                                                    logFirebaseEvent(
                                                        'LOYALTY_HISTORY_PAGE_status_ON_TOGGLE_ON');
                                                    logFirebaseEvent(
                                                        'status_backend_call');
                                                    _model.apiResultndw2Copy =
                                                        await APIOficialGroup
                                                            .saveConfigClubActivateCall
                                                            .call(
                                                      authToken:
                                                          currentAuthenticationToken,
                                                      active:
                                                          _model.statusValue,
                                                    );

                                                    safeSetState(() {});
                                                  } else {
                                                    logFirebaseEvent(
                                                        'LOYALTY_HISTORY_status_ON_TOGGLE_OFF');
                                                    logFirebaseEvent(
                                                        'status_backend_call');
                                                    _model.apiResultndw2 =
                                                        await APIOficialGroup
                                                            .saveConfigClubActivateCall
                                                            .call(
                                                      authToken:
                                                          currentAuthenticationToken,
                                                      active:
                                                          _model.statusValue,
                                                    );

                                                    safeSetState(() {});
                                                  }
                                                },
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                activeTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                inactiveTrackColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                inactiveThumbColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              );
                                            },
                                          ),
                                      ],
                                    ),
                                  ),
                                  if (getJsonField(
                                        _model.historys,
                                        r'''$[0].client.name''',
                                      ) !=
                                      null)
                                    Builder(
                                      builder: (context) {
                                        final pontos = getJsonField(
                                          _model.historys,
                                          r'''$''',
                                        ).toList().take(100000).toList();

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: pontos.length,
                                          itemBuilder: (context, pontosIndex) {
                                            final pontosItem =
                                                pontos[pontosIndex];
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 1.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      8.0),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: getJsonField(
                                                                                  pontosItem,
                                                                                  r'''$.client.name''',
                                                                                ).toString(),
                                                                                style: const TextStyle(),
                                                                              )
                                                                            ],
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
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
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              getJsonField(
                                                                                pontosItem,
                                                                                r'''$.title''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              ': ',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            Stack(
                                                                              children: [
                                                                                if (functions.convertJsonToString(getJsonField(
                                                                                      pontosItem,
                                                                                      r'''$.type''',
                                                                                    )) ==
                                                                                    'credit')
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      functions.concateStrings(
                                                                                          valueOrDefault<String>(
                                                                                            functions.concateStrings(
                                                                                                '+ ',
                                                                                                getJsonField(
                                                                                                  pontosItem,
                                                                                                  r'''$.value''',
                                                                                                ).toString()),
                                                                                            '- ',
                                                                                          ),
                                                                                          ' pontos'),
                                                                                      '- ',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                if (functions.convertJsonToString(getJsonField(
                                                                                      pontosItem,
                                                                                      r'''$.type''',
                                                                                    )) !=
                                                                                    'credit')
                                                                                  Text(
                                                                                    functions.concateStrings(
                                                                                        valueOrDefault<String>(
                                                                                          functions.concateStrings(
                                                                                              '- ',
                                                                                              getJsonField(
                                                                                                pontosItem,
                                                                                                r'''$.value''',
                                                                                              ).toString()),
                                                                                          '- ',
                                                                                        ),
                                                                                        ' pontos')!,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            functions.formatDateHour(getJsonField(
                                                                              pontosItem,
                                                                              r'''$.created_at''',
                                                                            ).toString()),
                                                                            '-',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                        ),
                                                                      ],
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
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  if (getJsonField(
                                        _model.historys,
                                        r'''$[0].client.name''',
                                      ) ==
                                      null)
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Você ainda não possui histórico de pontos.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 14.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/meninablu-transparent.png',
                                              width: 274.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.5,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
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
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.footerModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const FooterWidget(),
                        ),
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
