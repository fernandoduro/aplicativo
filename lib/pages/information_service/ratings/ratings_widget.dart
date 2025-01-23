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
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'ratings_model.dart';
export 'ratings_model.dart';

class RatingsWidget extends StatefulWidget {
  const RatingsWidget({
    super.key,
    required this.professionalclientid,
    required this.idClient,
  });

  final int? professionalclientid;
  final int? idClient;

  @override
  State<RatingsWidget> createState() => _RatingsWidgetState();
}

class _RatingsWidgetState extends State<RatingsWidget>
    with TickerProviderStateMixin {
  late RatingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Ratings'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('RATINGS_PAGE_Ratings_ON_INIT_STATE');
      logFirebaseEvent('Ratings_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
    });

    _model.dataTextController ??= TextEditingController();
    _model.dataFocusNode ??= FocusNode();

    _model.horaTextController ??= TextEditingController();
    _model.horaFocusNode ??= FocusNode();

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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.headerHelpModel,
                    updateCallback: () => safeSetState(() {}),
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
                                  MediaQuery.sizeOf(context).height * 0.85,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                controller: _model.columnController1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Avaliações',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 30.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .poppins(),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 30.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: APIOficialGroup
                                            .getClientByIDCall
                                            .call(
                                          authToken: currentAuthenticationToken,
                                          id: widget!.idClient?.toString(),
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
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final containerGetClientByIDResponse =
                                              snapshot.data!;

                                          return Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Cliente',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'RATINGS_PAGE_Text_d3h3uqh9_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Text_navigate_to');

                                                          context.pushNamed(
                                                            'NewClient01',
                                                            queryParameters: {
                                                              'idClient':
                                                                  serializeParam(
                                                                widget!
                                                                    .professionalclientid,
                                                                ParamType.int,
                                                              ),
                                                              'adicionadoPeloMais':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Text(
                                                          'Editar',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .manrope(),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 5.0,
                                                                  height: 71.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            3.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          getJsonField(
                                                                            containerGetClientByIDResponse.jsonBody,
                                                                            r'''$.data.professional_clients[0].name''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.manrope(),
                                                                                fontSize: 17.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w900,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
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
                                                                              .start,
                                                                      children: [
                                                                        if (getJsonField(
                                                                              containerGetClientByIDResponse.jsonBody,
                                                                              r'''$.data.birthday''',
                                                                            ) !=
                                                                            null)
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                containerGetClientByIDResponse.jsonBody,
                                                                                r'''$.data.professional_clients[0].birthday''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.manrope(),
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
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                containerGetClientByIDResponse.jsonBody,
                                                                                r'''$.data.professional_clients[0].cpf''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.manrope(),
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
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        if (getJsonField(
                                                                              containerGetClientByIDResponse.jsonBody,
                                                                              r'''$.data.cellphone[0]''',
                                                                            ) !=
                                                                            null)
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                containerGetClientByIDResponse.jsonBody,
                                                                                r'''$.data.professional_clients[0].cellphone[0]''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.manrope(),
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
                                                  ),
                                                  if (getJsonField(
                                                        containerGetClientByIDResponse
                                                            .jsonBody,
                                                        r'''$.data.professional_clients[0].packages[0].id''',
                                                      ) !=
                                                      null)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  16.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              if (getJsonField(
                                                                    containerGetClientByIDResponse
                                                                        .jsonBody,
                                                                    r'''$.data.professional_clients[0].packages[0].id''',
                                                                  ) !=
                                                                  null)
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          'Pacotes: ',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.manrope(),
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w800,
                                                                              ),
                                                                        ),
                                                                        Builder(
                                                                          builder:
                                                                              (context) {
                                                                            final packsItems =
                                                                                getJsonField(
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
                                                                                  ).toString()} ',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.manrope(),
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
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 16.0, 20.0, 36.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: SingleChildScrollView(
                                            controller:
                                                _model.columnController2,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Form(
                                                  key: _model.formKey,
                                                  autovalidateMode:
                                                      AutovalidateMode.disabled,
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Serviços',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .manrope(),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                            FutureBuilder<
                                                                ApiCallResponse>(
                                                              future: APIOficialGroup
                                                                  .getServicesCall
                                                                  .call(
                                                                authToken:
                                                                    currentAuthenticationToken,
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
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final columnGetServicesResponse =
                                                                    snapshot
                                                                        .data!;

                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        if (getJsonField(
                                                                              columnGetServicesResponse.jsonBody,
                                                                              r'''$.data[*].id''',
                                                                            ) !=
                                                                            null)
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                              child: FlutterFlowDropDown<int>(
                                                                                controller: _model.servicosValueController ??= FormFieldController<int>(null),
                                                                                options: List<int>.from(getJsonField(
                                                                                  columnGetServicesResponse.jsonBody,
                                                                                  r'''$.data[*].id''',
                                                                                  true,
                                                                                )!),
                                                                                optionLabels: (getJsonField(
                                                                                  columnGetServicesResponse.jsonBody,
                                                                                  r'''$.data[*].name''',
                                                                                  true,
                                                                                ) as List)
                                                                                    .map<String>((s) => s.toString())
                                                                                    .toList()!,
                                                                                onChanged: (val) => safeSetState(() => _model.servicosValue = val),
                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                height: 40.0,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                hintText: 'Meus serviços',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 2.0,
                                                                                borderColor: Colors.transparent,
                                                                                borderWidth: 0.0,
                                                                                borderRadius: 8.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                hidesUnderline: true,
                                                                                isOverButton: false,
                                                                                isSearchable: false,
                                                                                isMultiSelect: false,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (getJsonField(
                                                                              columnGetServicesResponse.jsonBody,
                                                                              r'''$.data[*].id''',
                                                                            ) !=
                                                                            null)
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
                                                                              logFirebaseEvent('RATINGS_PAGE_Icon_mqnocqly_ON_TAP');
                                                                              if (FFAppState().FirstService == true) {
                                                                                logFirebaseEvent('Icon_navigate_to');

                                                                                context.pushNamed(
                                                                                  'FirstService',
                                                                                  queryParameters: {
                                                                                    'adicionadoPeloMais': serializeParam(
                                                                                      true,
                                                                                      ParamType.bool,
                                                                                    ),
                                                                                    'originConfig': serializeParam(
                                                                                      '',
                                                                                      ParamType.String,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              } else {
                                                                                logFirebaseEvent('Icon_navigate_to');

                                                                                context.pushNamed(
                                                                                  'Services02',
                                                                                  queryParameters: {
                                                                                    'adicionadoPeloMais': serializeParam(
                                                                                      true,
                                                                                      ParamType.bool,
                                                                                    ),
                                                                                    'originConfig': serializeParam(
                                                                                      '',
                                                                                      ParamType.String,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.add_box,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 36.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        if (getJsonField(
                                                                              columnGetServicesResponse.jsonBody,
                                                                              r'''$.data[*].id''',
                                                                            ) ==
                                                                            null)
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.servicosEmptyValueController ??= FormFieldController<String>(null),
                                                                                options: <String>[],
                                                                                onChanged: (val) => safeSetState(() => _model.servicosEmptyValue = val),
                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                height: 40.0,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                hintText: 'Meus serviços',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 2.0,
                                                                                borderColor: Colors.transparent,
                                                                                borderWidth: 0.0,
                                                                                borderRadius: 8.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                hidesUnderline: true,
                                                                                isOverButton: false,
                                                                                isSearchable: false,
                                                                                isMultiSelect: false,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (getJsonField(
                                                                              columnGetServicesResponse.jsonBody,
                                                                              r'''$.data[*].id''',
                                                                            ) ==
                                                                            null)
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
                                                                              logFirebaseEvent('RATINGS_PAGE_Icon_3k40qgds_ON_TAP');
                                                                              if (FFAppState().FirstService == true) {
                                                                                logFirebaseEvent('Icon_navigate_to');

                                                                                context.pushNamed(
                                                                                  'FirstService',
                                                                                  queryParameters: {
                                                                                    'adicionadoPeloMais': serializeParam(
                                                                                      true,
                                                                                      ParamType.bool,
                                                                                    ),
                                                                                    'originConfig': serializeParam(
                                                                                      '',
                                                                                      ParamType.String,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              } else {
                                                                                logFirebaseEvent('Icon_navigate_to');

                                                                                context.pushNamed(
                                                                                  'Services02',
                                                                                  queryParameters: {
                                                                                    'adicionadoPeloMais': serializeParam(
                                                                                      true,
                                                                                      ParamType.bool,
                                                                                    ),
                                                                                    'originConfig': serializeParam(
                                                                                      '',
                                                                                      ParamType.String,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              }
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.add_box,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 36.0,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Data e hora',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .manrope(),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.65,
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.dataTextController,
                                                                          focusNode:
                                                                              _model.dataFocusNode,
                                                                          autofocus:
                                                                              true,
                                                                          autofillHints: [
                                                                            AutofillHints.email
                                                                          ],
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Qual o dia?',
                                                                            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.manrope(),
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.manrope(),
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          keyboardType:
                                                                              TextInputType.datetime,
                                                                          validator: _model
                                                                              .dataTextControllerValidator
                                                                              .asValidator(context),
                                                                          inputFormatters: [
                                                                            _model.dataMask
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            8.0,
                                                                            0.0,
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.2,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.horaTextController,
                                                                        focusNode:
                                                                            _model.horaFocusNode,
                                                                        autofocus:
                                                                            true,
                                                                        autofillHints: [
                                                                          AutofillHints
                                                                              .email
                                                                        ],
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              'Horas',
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.manrope(),
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.manrope(),
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        keyboardType:
                                                                            TextInputType.number,
                                                                        validator: _model
                                                                            .horaTextControllerValidator
                                                                            .asValidator(context),
                                                                        inputFormatters: [
                                                                          _model
                                                                              .horaMask
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Comentários',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .manrope(),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .comentarioTextController,
                                                                  focusNode: _model
                                                                      .comentarioFocusNode,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.manrope(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText:
                                                                        'Faça seus comentários',
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.manrope(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .manrope(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  maxLines: 5,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .comentarioTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Gravar áudio',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .manrope(),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  if (_model
                                                                      .isRecording)
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              20.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'REC',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.manrope(),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ).animateOnActionTrigger(
                                                                        animationsMap[
                                                                            'rowOnActionTriggerAnimation']!,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed: _model.isRecording
                                                                              ? null
                                                                              : () async {
                                                                                  logFirebaseEvent('RATINGS_PAGE_INICIAR_BTN_ON_TAP');
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
                                                                          text: _model.isRecording
                                                                              ? 'Gravando'
                                                                              : 'Iniciar',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                50.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                  font: GoogleFonts.manrope(),
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                3.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(50.0),
                                                                            disabledColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            disabledTextColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                        ),
                                                                        FFButtonWidget(
                                                                          onPressed: !_model.isRecording
                                                                              ? null
                                                                              : () async {
                                                                                  logFirebaseEvent('RATINGS_PAGE_PARAR_BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_stop_audio_recording');
                                                                                  await stopAudioRecording(
                                                                                    audioRecorder: _model.audioRecorder,
                                                                                    audioName: 'recordedFileBytes',
                                                                                    onRecordingComplete: (audioFilePath, audioBytes) {
                                                                                      _model.recording = audioFilePath;
                                                                                      _model.recordedFileBytes = audioBytes;
                                                                                    },
                                                                                  );

                                                                                  logFirebaseEvent('Button_custom_action');
                                                                                  _model.base64Sound = await actions.convertAudioPathToBase64(
                                                                                    _model.recording,
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
                                                                          text:
                                                                              'Parar',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                50.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0xFFFF5963),
                                                                            textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                  font: GoogleFonts.manrope(),
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                3.0,
                                                                            borderRadius:
                                                                                BorderRadius.circular(50.0),
                                                                            disabledColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            disabledTextColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                      .isShowPlayer)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          FlutterFlowAudioPlayer(
                                                                        audio: Audio
                                                                            .network(
                                                                          _model
                                                                              .recording!,
                                                                          metas:
                                                                              Metas(
                                                                            title:
                                                                                'Áudio',
                                                                          ),
                                                                        ),
                                                                        titleTextStyle: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              font: GoogleFonts.poppins(),
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        playbackDurationTextStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              font: GoogleFonts.manrope(),
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        playbackButtonColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        activeTrackColor:
                                                                            FlutterFlowTheme.of(context).alternate,
                                                                        elevation:
                                                                            4.0,
                                                                        playInBackground:
                                                                            PlayInBackground.disabledRestoreOnForeground,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'RATINGS_PAGE_SALVAR_AVALIAO_BTN_ON_TAP');
                                                                        var _shouldSetState =
                                                                            false;
                                                                        logFirebaseEvent(
                                                                            'Button_validate_form');
                                                                        if (_model.formKey.currentState ==
                                                                                null ||
                                                                            !_model.formKey.currentState!.validate()) {
                                                                          return;
                                                                        }
                                                                        if (_model.servicosValue ==
                                                                            null) {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Campo serviço obrigatório',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                            ),
                                                                          );
                                                                          return;
                                                                        }
                                                                        if (_model.servicosValue !=
                                                                            null) {
                                                                          if (_model.idRating ==
                                                                              null) {
                                                                            if (_model.audioBase64 == null ||
                                                                                _model.audioBase64 == '') {
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.apiResultqa9 = await APIOficialGroup.addRatingsCall.call(
                                                                                authToken: currentAuthenticationToken,
                                                                                bodyJson: <String, String?>{
                                                                                  'rating': _model.comentarioTextController.text,
                                                                                  'date_reference': functions.dateHourStringToDateTimeIso8601(_model.dataTextController.text, _model.horaTextController.text),
                                                                                  'professional_client_id': widget!.professionalclientid?.toString(),
                                                                                  'service_id': _model.servicosValue?.toString(),
                                                                                },
                                                                              );

                                                                              _shouldSetState = true;
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
                                                                                if (_shouldSetState) safeSetState(() {});
                                                                                return;
                                                                              }
                                                                            } else {
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.apiResultqa9Audio = await APIOficialGroup.addRatingsCall.call(
                                                                                authToken: currentAuthenticationToken,
                                                                                bodyJson: <String, String?>{
                                                                                  'rating': _model.comentarioTextController.text,
                                                                                  'date_reference': functions.dateHourStringToDateTimeIso8601(_model.dataTextController.text, _model.horaTextController.text),
                                                                                  'professional_client_id': widget!.professionalclientid?.toString(),
                                                                                  'service_id': _model.servicosValue?.toString(),
                                                                                  'audio_file': functions.concateStrings('data:audio/mp3;', _model.audioBase64),
                                                                                },
                                                                              );

                                                                              _shouldSetState = true;
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
                                                                                if (_shouldSetState) safeSetState(() {});
                                                                                return;
                                                                              }
                                                                            }
                                                                          } else {
                                                                            if (_model.audioBase64 == null ||
                                                                                _model.audioBase64 == '') {
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.apiResultqa93 = await APIOficialGroup.updateRatingCall.call(
                                                                                authToken: currentAuthenticationToken,
                                                                                bodyJson: <String, String?>{
                                                                                  'rating': _model.comentarioTextController.text,
                                                                                  'date_reference': functions.dateHourStringToDateTimeIso8601(_model.dataTextController.text, _model.horaTextController.text),
                                                                                  'professional_client_id': widget!.professionalclientid?.toString(),
                                                                                  'service_id': _model.servicosValue?.toString(),
                                                                                  'rating_id': _model.idRating?.toString(),
                                                                                },
                                                                              );

                                                                              _shouldSetState = true;
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
                                                                                if (_shouldSetState) safeSetState(() {});
                                                                                return;
                                                                              }
                                                                            } else {
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.apiResultqa9Audio2 = await APIOficialGroup.updateRatingCall.call(
                                                                                authToken: currentAuthenticationToken,
                                                                                bodyJson: <String, String?>{
                                                                                  'rating': _model.comentarioTextController.text,
                                                                                  'date_reference': functions.dateHourStringToDateTimeIso8601(_model.dataTextController.text, _model.horaTextController.text),
                                                                                  'professional_client_id': widget!.professionalclientid?.toString(),
                                                                                  'service_id': _model.servicosValue?.toString(),
                                                                                  'audio_file': functions.concateStrings('data:audio/mp3;', _model.audioBase64),
                                                                                  'rating_id': _model.idRating?.toString(),
                                                                                },
                                                                              );

                                                                              _shouldSetState = true;
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
                                                                                if (_shouldSetState) safeSetState(() {});
                                                                                return;
                                                                              }
                                                                            }
                                                                          }

                                                                          logFirebaseEvent(
                                                                              'Button_clear_text_fields_pin_codes');
                                                                          safeSetState(
                                                                              () {
                                                                            _model.dataTextController?.clear();
                                                                            _model.horaTextController?.clear();
                                                                            _model.comentarioTextController?.clear();
                                                                          });
                                                                          logFirebaseEvent(
                                                                              'Button_update_page_state');
                                                                          _model.audioBase64 =
                                                                              null;
                                                                          _model.idRating =
                                                                              null;
                                                                          _model.isShowPlayer =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Button_show_snack_bar');
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Escolha um tipo de serviço e tente novamente',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                            ),
                                                                          );
                                                                        }

                                                                        if (_shouldSetState)
                                                                          safeSetState(
                                                                              () {});
                                                                      },
                                                                      text:
                                                                          'Salvar avaliação',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.7,
                                                                        height:
                                                                            44.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              font: GoogleFonts.manrope(),
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                FutureBuilder<
                                                                    ApiCallResponse>(
                                                                  future: APIOficialGroup
                                                                      .listRatingsCall
                                                                      .call(
                                                                    authToken:
                                                                        currentAuthenticationToken,
                                                                    professionalClientId: widget!
                                                                        .professionalclientid
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
                                                                    final columnListRatingsResponse =
                                                                        snapshot
                                                                            .data!;

                                                                    return Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final ratingList = functions
                                                                            .handleNullList(getJsonField(
                                                                              columnListRatingsResponse.jsonBody,
                                                                              r'''$''',
                                                                            ))
                                                                            .toList()
                                                                            .take(100000)
                                                                            .toList();

                                                                        return Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: List.generate(
                                                                              ratingList.length,
                                                                              (ratingListIndex) {
                                                                            final ratingListItem =
                                                                                ratingList[ratingListIndex];
                                                                            return Stack(
                                                                              children: [
                                                                                if (ratingListIndex.toString() == '0')
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                    child: Text(
                                                                                      'Suas avaliações',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            font: GoogleFonts.manrope(),
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 8.0),
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
                                                                                                            ratingListItem,
                                                                                                            r'''$.date_reference''',
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
                                                                                                        Text(
                                                                                                          getJsonField(
                                                                                                            ratingListItem,
                                                                                                            r'''$.rating''',
                                                                                                          ).toString(),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                font: GoogleFonts.manrope(),
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
                                                                                                          ratingListItem,
                                                                                                          r'''$.audio_file''',
                                                                                                        ).toString(),
                                                                                                        metas: Metas(
                                                                                                          title: 'Áudio',
                                                                                                        ),
                                                                                                      ),
                                                                                                      titleTextStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                            font: GoogleFonts.poppins(),
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                      playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                            font: GoogleFonts.manrope(),
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
                                                                                                              logFirebaseEvent('RATINGS_PAGE_EDITAR_BTN_ON_TAP');
                                                                                                              logFirebaseEvent('Button_update_page_state');
                                                                                                              _model.idRating = getJsonField(
                                                                                                                ratingListItem,
                                                                                                                r'''$.id''',
                                                                                                              );
                                                                                                              safeSetState(() {});
                                                                                                              await Future.wait([
                                                                                                                Future(() async {
                                                                                                                  logFirebaseEvent('Button_set_form_field');
                                                                                                                  safeSetState(() {
                                                                                                                    _model.servicosValueController?.value = getJsonField(
                                                                                                                      ratingListItem,
                                                                                                                      r'''$.service_id''',
                                                                                                                    );
                                                                                                                  });
                                                                                                                }),
                                                                                                                Future(() async {
                                                                                                                  logFirebaseEvent('Button_set_form_field');
                                                                                                                  safeSetState(() {
                                                                                                                    _model.dataTextController?.text = functions.formatDate(getJsonField(
                                                                                                                      ratingListItem,
                                                                                                                      r'''$.date_reference''',
                                                                                                                    ).toString())!;
                                                                                                                    _model.dataMask.updateMask(
                                                                                                                      newValue: TextEditingValue(
                                                                                                                        text: _model.dataTextController!.text,
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  });
                                                                                                                }),
                                                                                                                Future(() async {
                                                                                                                  logFirebaseEvent('Button_set_form_field');
                                                                                                                  safeSetState(() {
                                                                                                                    _model.horaTextController?.text = functions.formatHour(getJsonField(
                                                                                                                      ratingListItem,
                                                                                                                      r'''$.date_reference''',
                                                                                                                    ).toString())!;
                                                                                                                    _model.horaMask.updateMask(
                                                                                                                      newValue: TextEditingValue(
                                                                                                                        text: _model.horaTextController!.text,
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  });
                                                                                                                }),
                                                                                                                Future(() async {
                                                                                                                  logFirebaseEvent('Button_set_form_field');
                                                                                                                  safeSetState(() {
                                                                                                                    _model.comentarioTextController?.text = getJsonField(
                                                                                                                      ratingListItem,
                                                                                                                      r'''$.rating''',
                                                                                                                    ).toString();
                                                                                                                  });
                                                                                                                }),
                                                                                                              ]);
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
                                                                                                                    font: GoogleFonts.manrope(),
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
                                                                                                                logFirebaseEvent('RATINGS_PAGE_EXCLUIR_BTN_ON_TAP');
                                                                                                                logFirebaseEvent('Button_alert_dialog');
                                                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                                                      context: context,
                                                                                                                      builder: (alertDialogContext) {
                                                                                                                        return WebViewAware(
                                                                                                                          child: AlertDialog(
                                                                                                                            content: Text('Deseja excluir esta avaliação?'),
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
                                                                                                                  await APIOficialGroup.deleteRatingsCall.call(
                                                                                                                    authToken: currentAuthenticationToken,
                                                                                                                    id: getJsonField(
                                                                                                                      ratingListItem,
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
                                                                                                                      font: GoogleFonts.manrope(),
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
                        updateCallback: () => safeSetState(() {}),
                        child: FooterWhiteWidget(),
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
