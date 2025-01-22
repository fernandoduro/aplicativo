import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'create_site_etapas11_model.dart';
export 'create_site_etapas11_model.dart';

class CreateSiteEtapas11Widget extends StatefulWidget {
  const CreateSiteEtapas11Widget({super.key});

  @override
  State<CreateSiteEtapas11Widget> createState() =>
      _CreateSiteEtapas11WidgetState();
}

class _CreateSiteEtapas11WidgetState extends State<CreateSiteEtapas11Widget> {
  late CreateSiteEtapas11Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas11Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas11'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS11_CreateSiteEtapas11_');
      logFirebaseEvent('CreateSiteEtapas11_update_page_state');
      _model.imageSelected = functions.convertStrintToInt(getJsonField(
        FFAppState().dataSite,
        r'''$.layout_highlight''',
      ).toString().toString());
      _model.imageSelectedSource = getJsonField(
        FFAppState().dataSite,
        r'''$.layout_highlight_source''',
      ).toString().toString();
      safeSetState(() {});
      logFirebaseEvent('CreateSiteEtapas11_custom_action');
      await actions.lockOrientation();
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
        final createSiteEtapas11LayoutsResponse = snapshot.data!;

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
                  Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: wrapWithModel(
                              model: _model.headerHelpModel,
                              updateCallback: () => safeSetState(() {}),
                              child: HeaderHelpWidget(),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.85,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.7,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15.0,
                                                                10.0,
                                                                15.0,
                                                                0.0),
                                                    child: Text(
                                                      'Selecione abaixo qual imagem você gostaria de destacar em seu site.',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .manrope(),
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
                                              ],
                                            ),
                                            Flexible(
                                              child: Builder(
                                                builder: (context) {
                                                  final grids = getJsonField(
                                                    createSiteEtapas11LayoutsResponse
                                                        .jsonBody,
                                                    r'''$.data''',
                                                  ).toList();

                                                  return GridView.builder(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                      0,
                                                      0.0,
                                                      0,
                                                      0,
                                                    ),
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 2,
                                                      crossAxisSpacing: 0.0,
                                                      mainAxisSpacing: 0.0,
                                                      childAspectRatio: 1.0,
                                                    ),
                                                    primary: false,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: grids.length,
                                                    itemBuilder:
                                                        (context, gridsIndex) {
                                                      final gridsItem =
                                                          grids[gridsIndex];
                                                      return Builder(
                                                        builder: (_) {
                                                          final child =
                                                              Container(
                                                            height: 90.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          14.0),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          10.0,
                                                                          15.0,
                                                                          10.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'CREATE_SITE_ETAPAS11_Image_txh7gmag_ON_T');
                                                                      if (_model
                                                                              .imageSelected ==
                                                                          getJsonField(
                                                                            gridsItem,
                                                                            r'''$.id''',
                                                                          )) {
                                                                        logFirebaseEvent(
                                                                            'Image_update_page_state');
                                                                        _model.imageSelected =
                                                                            null;
                                                                        _model.imageSelectedSource =
                                                                            null;
                                                                        safeSetState(
                                                                            () {});
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Image_update_page_state');
                                                                        _model.imageSelected =
                                                                            getJsonField(
                                                                          gridsItem,
                                                                          r'''$.id''',
                                                                        );
                                                                        _model.imageSelectedSource =
                                                                            getJsonField(
                                                                          gridsItem,
                                                                          r'''$.source''',
                                                                        ).toString();
                                                                        safeSetState(
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
                                                                          gridsItem,
                                                                          r'''$.source''',
                                                                        ).toString(),
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            1.0,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                          if ((_model
                                                                      .imageSelected !=
                                                                  getJsonField(
                                                                    gridsItem,
                                                                    r'''$.id''',
                                                                  )) &&
                                                              (_model.imageSelected !=
                                                                  null) &&
                                                              (_model.imageSelected !=
                                                                  0)) {
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
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                                      'CREATE_SITE_ETAPAS11_ESCOLHER_ESSA_IMAGE');
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');
                                                                  _model.updateSite11 =
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
                                                                      'layout_highlight_source':
                                                                          _model
                                                                              .imageSelectedSource,
                                                                    },
                                                                  );

                                                                  logFirebaseEvent(
                                                                      'Button_navigate_to');

                                                                  context.pushNamed(
                                                                      'CreateSiteEtapas12');

                                                                  logFirebaseEvent(
                                                                      'Button_update_app_state');
                                                                  FFAppState()
                                                                          .dataSite =
                                                                      getJsonField(
                                                                    (_model.updateSite11
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.data''',
                                                                  );
                                                                  safeSetState(
                                                                      () {});

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                      text:
                                                          'Escolher essa imagem',
                                                      options: FFButtonOptions(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.8,
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(),
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        disabledColor:
                                                            Color(0xFFACACAC),
                                                        disabledTextColor:
                                                            Color(0xFFD9D9D9),
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: wrapWithModel(
                                  model: _model.footerModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FooterWidget(),
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
            ),
          ),
        );
      },
    );
  }
}
