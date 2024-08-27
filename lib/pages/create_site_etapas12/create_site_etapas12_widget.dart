import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'create_site_etapas12_model.dart';
export 'create_site_etapas12_model.dart';

class CreateSiteEtapas12Widget extends StatefulWidget {
  const CreateSiteEtapas12Widget({super.key});

  @override
  State<CreateSiteEtapas12Widget> createState() =>
      _CreateSiteEtapas12WidgetState();
}

class _CreateSiteEtapas12WidgetState extends State<CreateSiteEtapas12Widget> {
  late CreateSiteEtapas12Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas12Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas12'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS12_CreateSiteEtapas12_');
      logFirebaseEvent('CreateSiteEtapas12_update_page_state');
      _model.colorSelected = getJsonField(
        FFAppState().dataSite,
        r'''$.primary_color''',
      ).toString().toString();
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
      future: APIOficialGroup.colorsCall.call(
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
        final createSiteEtapas12ColorsResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.85,
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
                                            'CREATE_SITE_ETAPAS12_Text_xyqtvytp_ON_TA');
                                        logFirebaseEvent('Text_navigate_back');
                                        context.safePop();
                                      },
                                      child: Text(
                                        '< Voltar',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.help_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 36.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).height * 0.67,
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            child: Text(
                                              'Selecione abaixo qual cor você gostaria de destacar em seu site',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 30.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Builder(
                                          builder: (context) {
                                            final colors = getJsonField(
                                              createSiteEtapas12ColorsResponse
                                                  .jsonBody,
                                              r'''$.data''',
                                            ).toList();

                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: colors.length,
                                              itemBuilder:
                                                  (context, colorsIndex) {
                                                final colorsItem =
                                                    colors[colorsIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 10.0,
                                                          15.0, 0.0),
                                                  child: InkWell(
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
                                                          'CREATE_SITE_ETAPAS12_Container_v9gjwts4_');
                                                      if (_model
                                                              .colorSelected ==
                                                          getJsonField(
                                                            colorsItem,
                                                            r'''$.id''',
                                                          ).toString()) {
                                                        logFirebaseEvent(
                                                            'Container_update_page_state');
                                                        _model.colorSelected =
                                                            null;
                                                        setState(() {});
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Container_update_page_state');
                                                        _model.colorSelected =
                                                            getJsonField(
                                                          colorsItem,
                                                          r'''$.id''',
                                                        ).toString();
                                                        setState(() {});
                                                      }
                                                    },
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 70.0,
                                                      decoration: BoxDecoration(
                                                        color: () {
                                                          if (_model
                                                                  .colorSelected ==
                                                              getJsonField(
                                                                colorsItem,
                                                                r'''$.id''',
                                                              ).toString()) {
                                                            return colorFromCssString(
                                                              getJsonField(
                                                                colorsItem,
                                                                r'''$.hex''',
                                                              ).toString(),
                                                            );
                                                          } else if (_model
                                                                      .colorSelected ==
                                                                  null ||
                                                              _model.colorSelected ==
                                                                  '') {
                                                            return colorFromCssString(
                                                              getJsonField(
                                                                colorsItem,
                                                                r'''$.hex''',
                                                              ).toString(),
                                                            );
                                                          } else if (_model
                                                                  .colorSelected ==
                                                              'null') {
                                                            return colorFromCssString(
                                                              getJsonField(
                                                                colorsItem,
                                                                r'''$.hex''',
                                                              ).toString(),
                                                            );
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate;
                                                          }
                                                        }(),
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  5.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  5.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
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
                                            onPressed: (_model.colorSelected ==
                                                        null ||
                                                    _model.colorSelected == '')
                                                ? null
                                                : () async {
                                                    logFirebaseEvent(
                                                        'CREATE_SITE_ETAPAS12_ESCOLHER_ESSA_COR_B');
                                                    logFirebaseEvent(
                                                        'Button_backend_call');
                                                    await APIOficialGroup
                                                        .updateSiteCall
                                                        .call(
                                                      authToken:
                                                          currentAuthenticationToken,
                                                      bodyJson: <String,
                                                          String?>{
                                                        'primary_color': _model
                                                            .colorSelected,
                                                      },
                                                    );

                                                    logFirebaseEvent(
                                                        'Button_navigate_to');

                                                    context.pushNamed(
                                                        'CreateSiteEtapas13');
                                                  },
                                            text: 'Escolher essa cor',
                                            options: FFButtonOptions(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.8,
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
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
                                                  BorderRadius.circular(8.0),
                                              disabledColor: const Color(0xFFACACAC),
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
            ),
          ),
        );
      },
    );
  }
}
