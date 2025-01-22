import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_site_etapas14_model.dart';
export 'create_site_etapas14_model.dart';

class CreateSiteEtapas14Widget extends StatefulWidget {
  const CreateSiteEtapas14Widget({super.key});

  @override
  State<CreateSiteEtapas14Widget> createState() =>
      _CreateSiteEtapas14WidgetState();
}

class _CreateSiteEtapas14WidgetState extends State<CreateSiteEtapas14Widget> {
  late CreateSiteEtapas14Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas14Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas14'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS14_CreateSiteEtapas14_');
      if (getJsonField(
            FFAppState().dataSite,
            r'''$.services''',
          ) !=
          null) {
        logFirebaseEvent('CreateSiteEtapas14_backend_call');
        _model.apiResutServices =
            await APIOficialGroup.specializationsCall.call(
          authToken: currentAuthenticationToken,
        );

        logFirebaseEvent('CreateSiteEtapas14_update_app_state');
        FFAppState().servicesJson = functions.addTwoListsNotLabelDuplicate(
            getJsonField(
              (_model.apiResutServices?.jsonBody ?? ''),
              r'''$.data''',
              true,
            ),
            getJsonField(
              FFAppState().dataSite,
              r'''$.services''',
              true,
            ));
        FFAppState().servicesJsonFull = getJsonField(
          FFAppState().servicesJson,
          r'''$''',
        );
        safeSetState(() {});
      } else {
        logFirebaseEvent('CreateSiteEtapas14_backend_call');
        _model.apiResutServicesNotExists =
            await APIOficialGroup.specializationsCall.call(
          authToken: currentAuthenticationToken,
        );

        logFirebaseEvent('CreateSiteEtapas14_update_app_state');
        FFAppState().servicesJson = getJsonField(
          (_model.apiResutServicesNotExists?.jsonBody ?? ''),
          r'''$.data''',
        );
        FFAppState().servicesJsonFull = getJsonField(
          FFAppState().servicesJson,
          r'''$''',
        );
        safeSetState(() {});
      }

      logFirebaseEvent('CreateSiteEtapas14_custom_action');
      await actions.lockOrientation();
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.buscaTextController ??= TextEditingController();
    _model.buscaFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
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
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.85,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: SingleChildScrollView(
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
                                                'Selecione os serviços que oferece atualmente:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.manrope(),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: (isWeb
                                                              ? MediaQuery.viewInsetsOf(
                                                                          context)
                                                                      .bottom >
                                                                  0
                                                              : _isKeyboardVisible)
                                                          ? 20.0
                                                          : 30.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 60.0,
                                            decoration: const BoxDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.buscaTextController,
                                                focusNode:
                                                    _model.buscaFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.buscaTextController',
                                                  const Duration(milliseconds: 2000),
                                                  () async {
                                                    logFirebaseEvent(
                                                        'CREATE_SITE_ETAPAS14_busca_ON_TEXTFIELD_');
                                                    if (FFAppState()
                                                            .firstAccess ==
                                                        false) {
                                                      logFirebaseEvent(
                                                          'busca_update_app_state');
                                                      FFAppState()
                                                              .servicesJson =
                                                          functions
                                                              .filterServices(
                                                                  getJsonField(
                                                                    FFAppState()
                                                                        .servicesJsonFull,
                                                                    r'''$''',
                                                                    true,
                                                                  ),
                                                                  _model
                                                                      .buscaTextController
                                                                      .text);
                                                      safeSetState(() {});
                                                      if (!functions
                                                          .existElementList(
                                                              FFAppState()
                                                                  .servicesJson)!) {
                                                        logFirebaseEvent(
                                                            'busca_update_app_state');
                                                        FFAppState()
                                                                .servicesJson =
                                                            <String, String?>{
                                                          'type':
                                                              'custom_service',
                                                          'label': _model
                                                              .buscaTextController
                                                              .text,
                                                          'name': _model
                                                              .buscaTextController
                                                              .text,
                                                        };
                                                        safeSetState(() {});
                                                      }
                                                    }
                                                    logFirebaseEvent(
                                                        'busca_update_page_state');
                                                    _model.firstAccess = false;
                                                    safeSetState(() {});
                                                  },
                                                ),
                                                autofocus: false,
                                                textCapitalization:
                                                    TextCapitalization
                                                        .sentences,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Pesquisar',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .manrope(),
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .manrope(),
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.manrope(),
                                                      letterSpacing: 0.0,
                                                    ),
                                                validator: _model
                                                    .buscaTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final services = functions
                                                        .clearDuplicates(
                                                            functions
                                                                .filterServices(
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .servicesJson,
                                                                      r'''$''',
                                                                      true,
                                                                    ),
                                                                    _model
                                                                        .buscaTextController
                                                                        .text),
                                                            'label')
                                                        ?.toList() ??
                                                    [];

                                                return InkWell(
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
                                                        'CREATE_SITE_ETAPAS14_ListView_1m1t0c32_O');
                                                    logFirebaseEvent(
                                                        'Column_update_app_state');

                                                    safeSetState(() {});
                                                  },
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          services.length,
                                                          (servicesIndex) {
                                                        final servicesItem =
                                                            services[
                                                                servicesIndex];
                                                        return Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child:
                                                                SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Theme(
                                                                          data:
                                                                              ThemeData(
                                                                            checkboxTheme:
                                                                                CheckboxThemeData(
                                                                              visualDensity: VisualDensity.compact,
                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            unselectedWidgetColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          child:
                                                                              Checkbox(
                                                                            value: _model.checkboxValueMap[servicesItem] ??= functions.searchElementByListAndColumn(
                                                                                    getJsonField(
                                                                                      FFAppState().dataSite,
                                                                                      r'''$.services''',
                                                                                      true,
                                                                                    ),
                                                                                    getJsonField(
                                                                                      servicesItem,
                                                                                      r'''$.label''',
                                                                                    ).toString(),
                                                                                    'label') ==
                                                                                true,
                                                                            onChanged:
                                                                                (newValue) async {
                                                                              safeSetState(() => _model.checkboxValueMap[servicesItem] = newValue!);
                                                                              if (newValue!) {
                                                                                logFirebaseEvent('CREATE_SITE_ETAPAS14_Checkbox_f8y66n3l_O');
                                                                                logFirebaseEvent('Checkbox_update_app_state');
                                                                                FFAppState().serviceJsonAux = functions.filterServices(
                                                                                    getJsonField(
                                                                                      FFAppState().servicesJsonFull,
                                                                                      r'''$''',
                                                                                      true,
                                                                                    ),
                                                                                    _model.buscaTextController.text);
                                                                                safeSetState(() {});
                                                                                if (!functions.existElementList(getJsonField(
                                                                                  FFAppState().serviceJsonAux,
                                                                                  r'''$''',
                                                                                  true,
                                                                                ))!) {
                                                                                  logFirebaseEvent('Checkbox_update_app_state');
                                                                                  FFAppState().servicesJson = functions.addTwoListsNotLabelDuplicate(
                                                                                      getJsonField(
                                                                                        FFAppState().servicesJson,
                                                                                        r'''$''',
                                                                                        true,
                                                                                      ),
                                                                                      getJsonField(
                                                                                        FFAppState().servicesJsonFull,
                                                                                        r'''$''',
                                                                                        true,
                                                                                      ));
                                                                                  FFAppState().servicesJsonFull = jsonDecode('[{\"id\":\"\",\"label\":\"\"}]');
                                                                                  safeSetState(() {});
                                                                                  logFirebaseEvent('Checkbox_update_app_state');
                                                                                  FFAppState().servicesJsonFull = getJsonField(
                                                                                    FFAppState().servicesJson,
                                                                                    r'''$''',
                                                                                  );
                                                                                  safeSetState(() {});
                                                                                  logFirebaseEvent('Checkbox_clear_text_fields_pin_codes');
                                                                                  safeSetState(() {
                                                                                    _model.buscaTextController?.clear();
                                                                                  });
                                                                                }
                                                                              }
                                                                            },
                                                                            side:
                                                                                BorderSide(
                                                                              width: 2,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            activeColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            checkColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        servicesItem,
                                                                        r'''$.label''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.manrope(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 40.0),
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
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'CREATE_SITE_ETAPAS14_AVANAR_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_backend_call');
                                                  _model.updatesite14 =
                                                      await APIOficialGroup
                                                          .updateSiteCall
                                                          .call(
                                                    authToken:
                                                        currentAuthenticationToken,
                                                    bodyJson: <String,
                                                        List<dynamic>?>{
                                                      'services': _model
                                                          .checkboxCheckedItems,
                                                    },
                                                  );

                                                  logFirebaseEvent(
                                                      'Button_navigate_to');

                                                  context.pushNamed(
                                                      'CreateSiteEtapas15');

                                                  logFirebaseEvent(
                                                      'Button_update_app_state');
                                                  FFAppState().dataSite =
                                                      getJsonField(
                                                    (_model.updatesite14
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data''',
                                                  );
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                                text: 'Avançar',
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
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .manrope(),
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
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        height: (isWeb
                                                ? MediaQuery.viewInsetsOf(
                                                            context)
                                                        .bottom >
                                                    0
                                                : _isKeyboardVisible)
                                            ? 300.0
                                            : 0.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ),
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
