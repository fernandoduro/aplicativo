import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'create_site_etapa7_model.dart';
export 'create_site_etapa7_model.dart';

class CreateSiteEtapa7Widget extends StatefulWidget {
  const CreateSiteEtapa7Widget({super.key});

  @override
  State<CreateSiteEtapa7Widget> createState() => _CreateSiteEtapa7WidgetState();
}

class _CreateSiteEtapa7WidgetState extends State<CreateSiteEtapa7Widget> {
  late CreateSiteEtapa7Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapa7Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapa7'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPA7_CreateSiteEtapa7_ON_I');
      logFirebaseEvent('CreateSiteEtapa7_backend_call');
      _model.apiResutServices = await APIOficialGroup.specializationsCall.call(
        authToken: currentAuthenticationToken,
      );

      logFirebaseEvent('CreateSiteEtapa7_update_app_state');
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
          ))!;
      FFAppState().servicesJsonFull = getJsonField(
        FFAppState().servicesJson,
        r'''$''',
      );
      setState(() {});
    });

    _model.buscaTextController ??= TextEditingController();
    _model.buscaFocusNode ??= FocusNode();
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
                                            'CREATE_SITE_ETAPA7_Text_aambeuqa_ON_TAP');
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
                                            'Selecione os serviços que presta atualmente:',
                                            style: FlutterFlowTheme.of(context)
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
                                      Container(
                                        width: double.infinity,
                                        height: 60.0,
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller:
                                                _model.buscaTextController,
                                            focusNode: _model.buscaFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.buscaTextController',
                                              const Duration(milliseconds: 2000),
                                              () async {
                                                logFirebaseEvent(
                                                    'CREATE_SITE_ETAPA7_busca_ON_TEXTFIELD_CH');
                                                logFirebaseEvent(
                                                    'busca_update_app_state');
                                                FFAppState().servicesJson =
                                                    functions.filterServices(
                                                        getJsonField(
                                                          FFAppState()
                                                              .servicesJsonFull,
                                                          r'''$''',
                                                          true,
                                                        ),
                                                        _model
                                                            .buscaTextController
                                                            .text)!;
                                                setState(() {});
                                                if (!functions.existElementList(
                                                    FFAppState()
                                                        .servicesJson)!) {
                                                  logFirebaseEvent(
                                                      'busca_update_app_state');
                                                  FFAppState().servicesJson =
                                                      <String, String?>{
                                                    'type': 'custom_service',
                                                    'label': _model
                                                        .buscaTextController
                                                        .text,
                                                    'name': _model
                                                        .buscaTextController
                                                        .text,
                                                  };
                                                  setState(() {});
                                                }
                                              },
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Pesquisar',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  letterSpacing: 0.0,
                                                ),
                                            validator: _model
                                                .buscaTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          final services = functions
                                                  .clearDuplicates(
                                                      functions.filterServices(
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

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: services.length,
                                            itemBuilder:
                                                (context, servicesIndex) {
                                              final servicesItem =
                                                  services[servicesIndex];
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration: const BoxDecoration(),
                                                    child: Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            const CheckboxThemeData(
                                                          visualDensity:
                                                              VisualDensity
                                                                  .compact,
                                                          materialTapTargetSize:
                                                              MaterialTapTargetSize
                                                                  .shrinkWrap,
                                                          shape: CircleBorder(),
                                                        ),
                                                        unselectedWidgetColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkboxValueMap[
                                                            servicesItem] ??= functions
                                                                .searchElementByListAndColumn(
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .dataSite,
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
                                                          setState(() => _model
                                                                      .checkboxValueMap[
                                                                  servicesItem] =
                                                              newValue!);
                                                          if (newValue!) {
                                                            logFirebaseEvent(
                                                                'CREATE_SITE_ETAPA7_Checkbox_f8y66n3l_ON_');
                                                            logFirebaseEvent(
                                                                'Checkbox_update_app_state');
                                                            FFAppState().serviceJsonAux = functions
                                                                .filterServices(
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .servicesJsonFull,
                                                                      r'''$''',
                                                                      true,
                                                                    ),
                                                                    _model
                                                                        .buscaTextController
                                                                        .text)!;
                                                            setState(() {});
                                                            if (!functions
                                                                .existElementList(
                                                                    getJsonField(
                                                              FFAppState()
                                                                  .serviceJsonAux,
                                                              r'''$''',
                                                              true,
                                                            ))!) {
                                                              logFirebaseEvent(
                                                                  'Checkbox_update_app_state');
                                                              FFAppState()
                                                                      .servicesJson =
                                                                  functions.addTwoListsNotLabelDuplicate(
                                                                      getJsonField(
                                                                        FFAppState()
                                                                            .servicesJson,
                                                                        r'''$''',
                                                                        true,
                                                                      ),
                                                                      getJsonField(
                                                                        FFAppState()
                                                                            .servicesJsonFull,
                                                                        r'''$''',
                                                                        true,
                                                                      ))!;
                                                              FFAppState()
                                                                      .servicesJsonFull =
                                                                  jsonDecode(
                                                                      '[{\"id\":\"\",\"label\":\"\"}]');
                                                              setState(() {});
                                                              logFirebaseEvent(
                                                                  'Checkbox_update_app_state');
                                                              FFAppState()
                                                                      .servicesJsonFull =
                                                                  getJsonField(
                                                                FFAppState()
                                                                    .servicesJson,
                                                                r'''$''',
                                                              );
                                                              setState(() {});
                                                              logFirebaseEvent(
                                                                  'Checkbox_clear_text_fields_pin_codes');
                                                              setState(() {
                                                                _model
                                                                    .buscaTextController
                                                                    ?.clear();
                                                              });
                                                            }
                                                          }
                                                        },
                                                        side: BorderSide(
                                                          width: 2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        checkColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                      servicesItem,
                                                      r'''$.label''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 0.0),
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
                                                  'CREATE_SITE_ETAPA7_AVANAR_BTN_ON_TAP');
                                              if (FFAppState().existSite ==
                                                  true) {
                                                logFirebaseEvent(
                                                    'Button_backend_call');
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
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_backend_call');
                                                await APIOficialGroup
                                                    .createSiteCall
                                                    .call(
                                                  authToken:
                                                      currentAuthenticationToken,
                                                  bodyJson: <String,
                                                      List<dynamic>?>{
                                                    'services': _model
                                                        .checkboxCheckedItems,
                                                  },
                                                );
                                              }

                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.pushNamed(
                                                  'CreateSiteEtapa8');
                                            },
                                            text: 'Avançar',
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
  }
}
