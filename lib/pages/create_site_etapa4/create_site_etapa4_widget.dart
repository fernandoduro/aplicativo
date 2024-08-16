import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'create_site_etapa4_model.dart';
export 'create_site_etapa4_model.dart';

class CreateSiteEtapa4Widget extends StatefulWidget {
  const CreateSiteEtapa4Widget({super.key});

  @override
  State<CreateSiteEtapa4Widget> createState() => _CreateSiteEtapa4WidgetState();
}

class _CreateSiteEtapa4WidgetState extends State<CreateSiteEtapa4Widget> {
  late CreateSiteEtapa4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapa4Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapa4'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPA4_CreateSiteEtapa4_ON_I');
      logFirebaseEvent('CreateSiteEtapa4_update_page_state');
      _model.imageSelected = functions.convertStrintToInt(getJsonField(
        FFAppState().dataSite,
        r'''$.layout_highlight''',
      ).toString().toString());
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: APIOficialGroup.layoutsCall.call(
        authToken: currentAuthenticationToken,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final createSiteEtapa4LayoutsResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
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
                          model: _model.headerModel,
                          updateCallback: () => setState(() {}),
                          child: const HeaderWidget(),
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
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.85,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'CREATE_SITE_ETAPA4_Text_fobt8y3d_ON_TAP');
                                            logFirebaseEvent(
                                                'Text_navigate_back');
                                            context.safePop();
                                          },
                                          child: Text(
                                            '< Voltar',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.help_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 36.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.67,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 15.0, 0.0),
                                              child: Text(
                                                'Selecione abaixo qual imagem você gostaria de destacar em seu site',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 28.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    final layouts =
                                                        getJsonField(
                                                      createSiteEtapa4LayoutsResponse
                                                          .jsonBody,
                                                      r'''$.data''',
                                                    ).toList();

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: layouts.length,
                                                      itemBuilder: (context,
                                                          layoutsIndex) {
                                                        final layoutsItem =
                                                            layouts[
                                                                layoutsIndex];
                                                        return Builder(
                                                          builder: (_) {
                                                            final child =
                                                                Container(
                                                              width: 100.0,
                                                              height: 90.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14.0),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        10.0,
                                                                        15.0,
                                                                        10.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'CREATE_SITE_ETAPA4_Image_f5al6pko_ON_TAP');
                                                                    if (_model
                                                                            .imageSelected ==
                                                                        getJsonField(
                                                                          layoutsItem,
                                                                          r'''$.id''',
                                                                        )) {
                                                                      logFirebaseEvent(
                                                                          'Image_update_page_state');
                                                                      _model.imageSelected =
                                                                          null;
                                                                      setState(
                                                                          () {});
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Image_update_page_state');
                                                                      _model.imageSelected =
                                                                          getJsonField(
                                                                        layoutsItem,
                                                                        r'''$.id''',
                                                                      );
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  },
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .network(
                                                                      getJsonField(
                                                                        layoutsItem,
                                                                        r'''$.source''',
                                                                      ).toString(),
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.85,
                                                                      height:
                                                                          150.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                            if ((_model
                                                                        .imageSelected !=
                                                                    getJsonField(
                                                                      layoutsItem,
                                                                      r'''$.id''',
                                                                    )) &&
                                                                (_model.imageSelected !=
                                                                    null)) {
                                                              return ClipRect(
                                                                child:
                                                                    ImageFiltered(
                                                                  imageFilter:
                                                                      ImageFilter
                                                                          .blur(
                                                                    sigmaX: 5.0,
                                                                    sigmaY: 5.0,
                                                                  ),
                                                                  child: child,
                                                                ),
                                                              );
                                                            }
                                                            return child;
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              FFButtonWidget(
                                                onPressed:
                                                    (_model.imageSelected ==
                                                            null)
                                                        ? null
                                                        : () async {
                                                            logFirebaseEvent(
                                                                'CREATE_SITE_ETAPA4_ESCOLHER_ESSA_COR_BTN');
                                                            if (FFAppState()
                                                                    .existSite ==
                                                                true) {
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');
                                                              await APIOficialGroup
                                                                  .updateSiteCall
                                                                  .call(
                                                                authToken:
                                                                    currentAuthenticationToken,
                                                                bodyJson: <String,
                                                                    String?>{
                                                                  'layout_highlight': _model
                                                                      .imageSelected
                                                                      ?.toString(),
                                                                },
                                                              );
                                                            } else {
                                                              logFirebaseEvent(
                                                                  'Button_backend_call');
                                                              await APIOficialGroup
                                                                  .createSiteCall
                                                                  .call(
                                                                authToken:
                                                                    currentAuthenticationToken,
                                                                bodyJson: <String,
                                                                    String?>{
                                                                  'layout_highlight': _model
                                                                      .imageSelected
                                                                      ?.toString(),
                                                                },
                                                              );
                                                            }

                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                                'CreateSiteEtapa5');
                                                          },
                                                text: 'Escolher essa cor',
                                                options: FFButtonOptions(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.8,
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  disabledColor:
                                                      const Color(0xFFACACAC),
                                                  disabledTextColor:
                                                      const Color(0xFFD9D9D9),
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
                            ],
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
                              updateCallback: () => setState(() {}),
                              child: const FooterWidget(
                                selectedPage: 'teste',
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
          ),
        );
      },
    );
  }
}
