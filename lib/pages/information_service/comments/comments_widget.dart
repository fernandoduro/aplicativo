import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'comments_model.dart';
export 'comments_model.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({
    super.key,
    required this.idAppointment,
    required this.idClient,
  });

  final int? idAppointment;
  final int? idClient;

  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget>
    with TickerProviderStateMixin {
  late CommentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommentsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Comments'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('COMMENTS_PAGE_Comments_ON_INIT_STATE');
      logFirebaseEvent('Comments_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
      if (widget!.idAppointment.toString() != '0') {
        logFirebaseEvent('Comments_backend_call');
        _model.apiResult8nd =
            await APIOficialGroup.getAppointmentsByIDCall.call(
          authToken: currentAuthenticationToken,
          id: widget!.idAppointment?.toString(),
        );

        if ((_model.apiResult8nd?.succeeded ?? true)) {
          logFirebaseEvent('Comments_update_page_state');
          _model.idService = getJsonField(
            (_model.apiResult8nd?.jsonBody ?? ''),
            r'''$.service_id''',
          );
          _model.data = functions.formatDate(getJsonField(
            (_model.apiResult8nd?.jsonBody ?? ''),
            r'''$.scheduled_at''',
          ).toString().toString());
          _model.hora = functions.formatHour(getJsonField(
            (_model.apiResult8nd?.jsonBody ?? ''),
            r'''$.scheduled_at''',
          ).toString().toString());
          safeSetState(() {});
        }
      }
    });

    _model.comentarioTextController ??= TextEditingController();
    _model.comentarioFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
                              Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.headerHelpModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HeaderHelpWidget(),
                                          ),
                                          Expanded(
                                            child: SingleChildScrollView(
                                              controller: _model.body,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    constraints: BoxConstraints(
                                                      minHeight:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .height *
                                                              0.85,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        controller: _model
                                                            .columnController1,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                                      child:
                                                                          RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'Comentários ',
                                                                              style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    fontSize: 30.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            )
                                                                          ],
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .displaySmall
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 30.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: APIOficialGroup
                                                                    .getClientByIDCall
                                                                    .call(
                                                                  authToken:
                                                                      currentAuthenticationToken,
                                                                  id: widget!
                                                                      .idClient
                                                                      ?.toString(),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final containerGetClientByIDResponse =
                                                                      snapshot
                                                                          .data!;

                                                                  return Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(16.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                children: [
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('COMMENTS_PAGE_Text_fxddlowi_ON_TAP');
                                                                                      logFirebaseEvent('Text_navigate_to');

                                                                                      context.pushNamed(
                                                                                        'NewClient01',
                                                                                        queryParameters: {
                                                                                          'idClient': serializeParam(
                                                                                            widget!.idClient,
                                                                                            ParamType.int,
                                                                                          ),
                                                                                          'adicionadoPeloMais': serializeParam(
                                                                                            false,
                                                                                            ParamType.bool,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                      );
                                                                                    },
                                                                                    child: Text(
                                                                                      'Editar',
                                                                                      textAlign: TextAlign.end,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                    ),
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
                                                                                      Flexible(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Stack(
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Flexible(
                                                                                                          child: Stack(
                                                                                                            children: [
                                                                                                              Text(
                                                                                                                getJsonField(
                                                                                                                  containerGetClientByIDResponse.jsonBody,
                                                                                                                  r'''$.data.professional_clients[0].name''',
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
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                              Stack(
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        if (getJsonField(
                                                                                                              containerGetClientByIDResponse.jsonBody,
                                                                                                              r'''$.data.birthday''',
                                                                                                            ) !=
                                                                                                            null)
                                                                                                          Align(
                                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                              containerGetClientByIDResponse.jsonBody,
                                                                                                              r'''$.data.professional_clients[0].birthday''',
                                                                                                            ) !=
                                                                                                            null)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: Text(
                                                                                                              getJsonField(
                                                                                                                containerGetClientByIDResponse.jsonBody,
                                                                                                                r'''$.data.professional_clients[0].birthday''',
                                                                                                              ).toString(),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Manrope',
                                                                                                                    fontSize: 12.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        if (getJsonField(
                                                                                                              containerGetClientByIDResponse.jsonBody,
                                                                                                              r'''$.data.cpf''',
                                                                                                            ) !=
                                                                                                            null)
                                                                                                          Align(
                                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                              containerGetClientByIDResponse.jsonBody,
                                                                                                              r'''$.data.professional_clients[0].cpf''',
                                                                                                            ) !=
                                                                                                            null)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: Text(
                                                                                                              getJsonField(
                                                                                                                containerGetClientByIDResponse.jsonBody,
                                                                                                                r'''$.data.professional_clients[0].cpf''',
                                                                                                              ).toString(),
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
                                                                                              Stack(
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        if (getJsonField(
                                                                                                              containerGetClientByIDResponse.jsonBody,
                                                                                                              r'''$.data.cellphone[0]''',
                                                                                                            ) !=
                                                                                                            null)
                                                                                                          Align(
                                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
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
                                                                                                              containerGetClientByIDResponse.jsonBody,
                                                                                                              r'''$.data.professional_clients[0].cellphone[0]''',
                                                                                                            ) !=
                                                                                                            null)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: Text(
                                                                                                              getJsonField(
                                                                                                                containerGetClientByIDResponse.jsonBody,
                                                                                                                r'''$.data.professional_clients[0].cellphone[0]''',
                                                                                                              ).toString(),
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
                                                                                            ],
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
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              16.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  if (getJsonField(
                                                                                        containerGetClientByIDResponse.jsonBody,
                                                                                        r'''$.data.professional_clients[0].packages[0].name''',
                                                                                      ) !=
                                                                                      null)
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Data e hora: ',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                  ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Text(
                                                                                                  '${_model.data} ${_model.hora}',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Manrope',
                                                                                                        fontSize: 12.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Pacotes: ',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                  ),
                                                                                            ),
                                                                                            Builder(
                                                                                              builder: (context) {
                                                                                                final packsItems = getJsonField(
                                                                                                  containerGetClientByIDResponse.jsonBody,
                                                                                                  r'''$.data.professional_clients[0].packages''',
                                                                                                ).toList();

                                                                                                return Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: List.generate(packsItems.length, (packsItemsIndex) {
                                                                                                    final packsItemsItem = packsItems[packsItemsIndex];
                                                                                                    return Text(
                                                                                                      '${getJsonField(
                                                                                                        packsItemsItem,
                                                                                                        r'''$.name''',
                                                                                                      ).toString()} | ',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Manrope',
                                                                                                            fontSize: 12.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    );
                                                                                                  }),
                                                                                                );
                                                                                              },
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
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          16.0,
                                                                          20.0,
                                                                          36.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              16.0),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    controller:
                                                                        _model
                                                                            .columnController2,
                                                                    child:
                                                                        Column(
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
                                                                        Form(
                                                                          key: _model
                                                                              .formKey,
                                                                          autovalidateMode:
                                                                              AutovalidateMode.disabled,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                      child: Text(
                                                                                        'Comentários',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        child: TextFormField(
                                                                                          controller: _model.comentarioTextController,
                                                                                          focusNode: _model.comentarioFocusNode,
                                                                                          autofocus: false,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            isDense: true,
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Manrope',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: 'Faça seus comentários',
                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Manrope',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            enabledBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0x00000000),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            filled: true,
                                                                                            fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          maxLines: 5,
                                                                                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                          validator: _model.comentarioTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                      child: Text(
                                                                                        'Gravar áudio',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          if (_model.isRecording)
                                                                                            Padding(
                                                                                              padding: EdgeInsets.all(20.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                    child: Container(
                                                                                                      width: 20.0,
                                                                                                      height: 20.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      'REC',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Manrope',
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.bold,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ).animateOnActionTrigger(
                                                                                                animationsMap['rowOnActionTriggerAnimation']!,
                                                                                              ),
                                                                                            ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                              children: [
                                                                                                FFButtonWidget(
                                                                                                  onPressed: _model.isRecording
                                                                                                      ? null
                                                                                                      : () async {
                                                                                                          logFirebaseEvent('COMMENTS_PAGE_Button_z2wz7sot_ON_TAP');
                                                                                                          logFirebaseEvent('Button_request_permissions');
                                                                                                          await requestPermission(microphonePermission);
                                                                                                          if (await getPermissionStatus(microphonePermission)) {
                                                                                                            logFirebaseEvent('Button_start_audio_recording');
                                                                                                            await startAudioRecording(
                                                                                                              context,
                                                                                                              audioRecorder: _model.audioRecorder ??= AudioRecorder(),
                                                                                                            );

                                                                                                            logFirebaseEvent('Button_update_page_state');
                                                                                                            _model.isRecording = true;
                                                                                                            _model.isShowPlayer = false;
                                                                                                            safeSetState(() {});
                                                                                                            logFirebaseEvent('Button_widget_animation');
                                                                                                            if (animationsMap['rowOnActionTriggerAnimation'] != null) {
                                                                                                              await animationsMap['rowOnActionTriggerAnimation']!.controller.repeat(reverse: true);
                                                                                                            }
                                                                                                          } else {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Permissão negada!',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          }
                                                                                                        },
                                                                                                  text: () {
                                                                                                    if (_model.isRecording) {
                                                                                                      return 'Gravando';
                                                                                                    } else if (_model.isShowPlayer) {
                                                                                                      return 'Regravar';
                                                                                                    } else {
                                                                                                      return 'Iniciar';
                                                                                                    }
                                                                                                  }(),
                                                                                                  options: FFButtonOptions(
                                                                                                    width: 100.0,
                                                                                                    height: 50.0,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: Colors.white,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                    elevation: 3.0,
                                                                                                    borderRadius: BorderRadius.circular(50.0),
                                                                                                    disabledColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    disabledTextColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  ),
                                                                                                ),
                                                                                                FFButtonWidget(
                                                                                                  onPressed: !_model.isRecording
                                                                                                      ? null
                                                                                                      : () async {
                                                                                                          logFirebaseEvent('COMMENTS_PAGE_PARAR_BTN_ON_TAP');
                                                                                                          logFirebaseEvent('Button_stop_audio_recording');
                                                                                                          await stopAudioRecording(
                                                                                                            audioRecorder: _model.audioRecorder,
                                                                                                            audioName: 'recordedFileBytes',
                                                                                                            onRecordingComplete: (audioFilePath, audioBytes) {
                                                                                                              _model.recording2 = audioFilePath;
                                                                                                              _model.recordedFileBytes = audioBytes;
                                                                                                            },
                                                                                                          );

                                                                                                          logFirebaseEvent('Button_custom_action');
                                                                                                          _model.base64Sound = await actions.convertAudioPathToBase64(
                                                                                                            _model.recording2,
                                                                                                          );
                                                                                                          logFirebaseEvent('Button_update_page_state');
                                                                                                          _model.audioBase64 = _model.base64Sound;
                                                                                                          safeSetState(() {});
                                                                                                          logFirebaseEvent('Button_update_page_state');
                                                                                                          _model.isRecording = false;
                                                                                                          _model.isShowPlayer = true;
                                                                                                          safeSetState(() {});
                                                                                                          logFirebaseEvent('Button_widget_animation');
                                                                                                          if (animationsMap['rowOnActionTriggerAnimation'] != null) {
                                                                                                            animationsMap['rowOnActionTriggerAnimation']!.controller.stop();
                                                                                                          }

                                                                                                          safeSetState(() {});
                                                                                                        },
                                                                                                  text: 'Parar',
                                                                                                  options: FFButtonOptions(
                                                                                                    width: 100.0,
                                                                                                    height: 50.0,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                    color: Color(0xFFFF5963),
                                                                                                    textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: Colors.white,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                    elevation: 3.0,
                                                                                                    borderRadius: BorderRadius.circular(50.0),
                                                                                                    disabledColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    disabledTextColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          if (_model.isShowPlayer)
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                                                                                              child: FlutterFlowAudioPlayer(
                                                                                                audio: Audio.network(
                                                                                                  _model.recording2!,
                                                                                                  metas: Metas(
                                                                                                    title: 'Áudio',
                                                                                                  ),
                                                                                                ),
                                                                                                titleTextStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                                elevation: 4.0,
                                                                                                playInBackground: PlayInBackground.disabledRestoreOnForeground,
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                            child: FFButtonWidget(
                                                                                              onPressed: () {
                                                                                                if (_model.isRecording) {
                                                                                                  return true;
                                                                                                } else if ((_model.comentarioTextController.text == null || _model.comentarioTextController.text == '') && (_model.audioBase64 == null || _model.audioBase64 == '')) {
                                                                                                  return true;
                                                                                                } else {
                                                                                                  return false;
                                                                                                }
                                                                                              }()
                                                                                                  ? null
                                                                                                  : () async {
                                                                                                      logFirebaseEvent('COMMENTS_SALVAR_COMENTRIO_BTN_ON_TAP');
                                                                                                      if (_model.idComment == null) {
                                                                                                        if (_model.audioBase64 == null || _model.audioBase64 == '') {
                                                                                                          logFirebaseEvent('Button_backend_call');
                                                                                                          _model.apiResultqa9 = await APIOficialGroup.addCommentsCall.call(
                                                                                                            authToken: currentAuthenticationToken,
                                                                                                            bodyJson: <String, String?>{
                                                                                                              'comment': _model.comentarioTextController.text,
                                                                                                              'appointment_id': widget!.idAppointment?.toString(),
                                                                                                            },
                                                                                                          );

                                                                                                          if ((_model.apiResultqa9?.succeeded ?? true)) {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Tudo certo! Registramos estas informações.',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          } else {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Não deu certo! Tente novamente ou entre em contato conosco por favor.',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          }
                                                                                                        } else {
                                                                                                          logFirebaseEvent('Button_backend_call');
                                                                                                          _model.apiResultqa9Audio = await APIOficialGroup.addCommentsCall.call(
                                                                                                            authToken: currentAuthenticationToken,
                                                                                                            bodyJson: <String, String?>{
                                                                                                              'comment': _model.comentarioTextController.text,
                                                                                                              'appointment_id': widget!.idAppointment?.toString(),
                                                                                                              'audio_file': functions.concateStrings('data:audio/mp3;', _model.audioBase64),
                                                                                                            },
                                                                                                          );

                                                                                                          if ((_model.apiResultqa9Audio?.succeeded ?? true)) {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Tudo certo! Registramos estas informações.',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          } else {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Não deu certo! Tente novamente ou entre em contato conosco por favor.',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          }
                                                                                                        }
                                                                                                      } else {
                                                                                                        if (_model.audioBase64 == null || _model.audioBase64 == '') {
                                                                                                          logFirebaseEvent('Button_backend_call');
                                                                                                          _model.apiResultqa93 = await APIOficialGroup.updateCommentsCall.call(
                                                                                                            authToken: currentAuthenticationToken,
                                                                                                            bodyJson: <String, String?>{
                                                                                                              'comment': _model.comentarioTextController.text,
                                                                                                              'appointment_id': widget!.idAppointment?.toString(),
                                                                                                              'comment_id': _model.idComment?.toString(),
                                                                                                            },
                                                                                                          );

                                                                                                          if ((_model.apiResultqa93?.succeeded ?? true)) {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Tudo certo! Atualizamos estas informações.',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          } else {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Não deu certo! Tente novamente ou entre em contato conosco por favor.',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          }
                                                                                                        } else {
                                                                                                          logFirebaseEvent('Button_backend_call');
                                                                                                          _model.apiResultqa9Audio2 = await APIOficialGroup.updateCommentsCall.call(
                                                                                                            authToken: currentAuthRefreshToken,
                                                                                                            bodyJson: <String, String?>{
                                                                                                              'comment': _model.comentarioTextController.text,
                                                                                                              'appointment_id': widget!.idAppointment?.toString(),
                                                                                                              'audio_file': functions.concateStrings('data:audio/mp3;', _model.audioBase64),
                                                                                                              'comment_id': _model.idComment?.toString(),
                                                                                                            },
                                                                                                          );

                                                                                                          if ((_model.apiResultqa9Audio2?.succeeded ?? true)) {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Tudo certo! Atualizamos estas informações.',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          } else {
                                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                                              SnackBar(
                                                                                                                content: Text(
                                                                                                                  'Não deu certo! Tente novamente ou entre em contato conosco por favor.',
                                                                                                                  style: TextStyle(
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                              ),
                                                                                                            );
                                                                                                          }
                                                                                                        }
                                                                                                      }

                                                                                                      logFirebaseEvent('Button_clear_text_fields_pin_codes');
                                                                                                      safeSetState(() {
                                                                                                        _model.comentarioTextController?.clear();
                                                                                                      });
                                                                                                      logFirebaseEvent('Button_update_page_state');
                                                                                                      _model.audioBase64 = null;
                                                                                                      _model.idComment = null;
                                                                                                      _model.isShowPlayer = false;
                                                                                                      safeSetState(() {});

                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                              text: 'Salvar comentário',
                                                                                              options: FFButtonOptions(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                                height: 44.0,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                      fontFamily: 'Manrope',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3.0,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                                disabledColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                                disabledTextColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        FutureBuilder<ApiCallResponse>(
                                                                                          future: APIOficialGroup.listCommentsCall.call(
                                                                                            authToken: currentAuthenticationToken,
                                                                                            appointmentId: widget!.idAppointment?.toString(),
                                                                                          ),
                                                                                          builder: (context, snapshot) {
                                                                                            // Customize what your widget looks like when it's loading.
                                                                                            if (!snapshot.hasData) {
                                                                                              return Center(
                                                                                                child: SizedBox(
                                                                                                  width: 50.0,
                                                                                                  height: 50.0,
                                                                                                  child: CircularProgressIndicator(
                                                                                                    valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                      FlutterFlowTheme.of(context).primary,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                            final columnListCommentsResponse = snapshot.data!;

                                                                                            return Builder(
                                                                                              builder: (context) {
                                                                                                final commentsList = functions
                                                                                                    .handleNullList(getJsonField(
                                                                                                      columnListCommentsResponse.jsonBody,
                                                                                                      r'''$''',
                                                                                                    ))
                                                                                                    .toList()
                                                                                                    .take(100000)
                                                                                                    .toList();

                                                                                                return Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: List.generate(commentsList.length, (commentsListIndex) {
                                                                                                    final commentsListItem = commentsList[commentsListIndex];
                                                                                                    return Stack(
                                                                                                      children: [
                                                                                                        if (commentsListIndex.toString() == '0')
                                                                                                          Align(
                                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                            child: Text(
                                                                                                              'Seus Comentários',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Manrope',
                                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        Align(
                                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 8.0),
                                                                                                            child: Container(
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                borderRadius: BorderRadius.circular(16.0),
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Container(
                                                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                                child: Stack(
                                                                                                                  children: [
                                                                                                                    Column(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      children: [
                                                                                                                        Align(
                                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                Text(
                                                                                                                                  functions.formatDateHour(getJsonField(
                                                                                                                                    commentsListItem,
                                                                                                                                    r'''$.created_at''',
                                                                                                                                  ).toString())!,
                                                                                                                                  style: TextStyle(
                                                                                                                                    fontWeight: FontWeight.w800,
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Align(
                                                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                if (getJsonField(
                                                                                                                                      commentsListItem,
                                                                                                                                      r'''$.comment''',
                                                                                                                                    ) !=
                                                                                                                                    null)
                                                                                                                                  Text(
                                                                                                                                    getJsonField(
                                                                                                                                      commentsListItem,
                                                                                                                                      r'''$.comment''',
                                                                                                                                    ).toString(),
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Manrope',
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          children: [
                                                                                                                            FlutterFlowAudioPlayer(
                                                                                                                              audio: Audio.network(
                                                                                                                                getJsonField(
                                                                                                                                  commentsListItem,
                                                                                                                                  r'''$.audio_file''',
                                                                                                                                ).toString(),
                                                                                                                                metas: Metas(
                                                                                                                                  title: 'Áudio',
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              titleTextStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                                                    fontFamily: 'Poppins',
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                              playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                                    fontFamily: 'Manrope',
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                              playbackButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                                                              activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                                                              inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                                                                              elevation: 0.0,
                                                                                                                              playInBackground: PlayInBackground.disabledRestoreOnForeground,
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                        Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                          children: [
                                                                                                                            Padding(
                                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 10.0),
                                                                                                                              child: Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                children: [
                                                                                                                                  FFButtonWidget(
                                                                                                                                    onPressed: () async {
                                                                                                                                      logFirebaseEvent('COMMENTS_PAGE_EDITAR_BTN_ON_TAP');
                                                                                                                                      logFirebaseEvent('Button_update_page_state');
                                                                                                                                      _model.idComment = getJsonField(
                                                                                                                                        commentsListItem,
                                                                                                                                        r'''$.id''',
                                                                                                                                      );
                                                                                                                                      safeSetState(() {});
                                                                                                                                      logFirebaseEvent('Button_set_form_field');
                                                                                                                                      safeSetState(() {
                                                                                                                                        _model.comentarioTextController?.text = getJsonField(
                                                                                                                                          commentsListItem,
                                                                                                                                          r'''$.comment''',
                                                                                                                                        ).toString();
                                                                                                                                      });
                                                                                                                                      logFirebaseEvent('Button_scroll_to');
                                                                                                                                      await _model.body?.animateTo(
                                                                                                                                        0,
                                                                                                                                        duration: Duration(milliseconds: 100),
                                                                                                                                        curve: Curves.ease,
                                                                                                                                      );
                                                                                                                                    },
                                                                                                                                    text: 'Editar',
                                                                                                                                    icon: Icon(
                                                                                                                                      Icons.edit,
                                                                                                                                      size: 15.0,
                                                                                                                                    ),
                                                                                                                                    options: FFButtonOptions(
                                                                                                                                      height: 40.0,
                                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                            fontFamily: 'Manrope',
                                                                                                                                            color: Colors.white,
                                                                                                                                            letterSpacing: 0.0,
                                                                                                                                          ),
                                                                                                                                      elevation: 0.0,
                                                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Padding(
                                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                                                                                                                                    child: FFButtonWidget(
                                                                                                                                      onPressed: () async {
                                                                                                                                        logFirebaseEvent('COMMENTS_PAGE_EXCLUIR_BTN_ON_TAP');
                                                                                                                                        logFirebaseEvent('Button_alert_dialog');
                                                                                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                                                                                              context: context,
                                                                                                                                              builder: (alertDialogContext) {
                                                                                                                                                return WebViewAware(
                                                                                                                                                  child: AlertDialog(
                                                                                                                                                    content: Text('Deseja excluir o comentário?'),
                                                                                                                                                    actions: [
                                                                                                                                                      TextButton(
                                                                                                                                                        onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                                                        child: Text('Não'),
                                                                                                                                                      ),
                                                                                                                                                      TextButton(
                                                                                                                                                        onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                                                        child: Text('Sim'),
                                                                                                                                                      ),
                                                                                                                                                    ],
                                                                                                                                                  ),
                                                                                                                                                );
                                                                                                                                              },
                                                                                                                                            ) ??
                                                                                                                                            false;
                                                                                                                                        if (confirmDialogResponse) {
                                                                                                                                          logFirebaseEvent('Button_backend_call');
                                                                                                                                          await APIOficialGroup.deleteCommentsCall.call(
                                                                                                                                            authToken: currentAuthenticationToken,
                                                                                                                                            id: getJsonField(
                                                                                                                                              commentsListItem,
                                                                                                                                              r'''$.id''',
                                                                                                                                            ).toString(),
                                                                                                                                          );

                                                                                                                                          logFirebaseEvent('Button_show_snack_bar');
                                                                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                                                                            SnackBar(
                                                                                                                                              content: Text(
                                                                                                                                                'Tudo certo! Removemos estas informações.',
                                                                                                                                                style: TextStyle(
                                                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                              duration: Duration(milliseconds: 4000),
                                                                                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                                                            ),
                                                                                                                                          );
                                                                                                                                          logFirebaseEvent('Button_update_page_state');

                                                                                                                                          safeSetState(() {});
                                                                                                                                        }
                                                                                                                                      },
                                                                                                                                      text: 'Excluir',
                                                                                                                                      icon: Icon(
                                                                                                                                        Icons.delete_sharp,
                                                                                                                                        size: 15.0,
                                                                                                                                      ),
                                                                                                                                      options: FFButtonOptions(
                                                                                                                                        height: 40.0,
                                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                              fontFamily: 'Manrope',
                                                                                                                                              color: Colors.white,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                            ),
                                                                                                                                        elevation: 0.0,
                                                                                                                                        borderRadius: BorderRadius.circular(8.0),
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
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    );
                                                                                                  }),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          },
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
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
                                              wrapWithModel(
                                                model: _model.footerWhiteModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FooterWhiteWidget(),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
