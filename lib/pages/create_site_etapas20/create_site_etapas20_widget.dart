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
import 'create_site_etapas20_model.dart';
export 'create_site_etapas20_model.dart';

class CreateSiteEtapas20Widget extends StatefulWidget {
  const CreateSiteEtapas20Widget({super.key});

  @override
  State<CreateSiteEtapas20Widget> createState() =>
      _CreateSiteEtapas20WidgetState();
}

class _CreateSiteEtapas20WidgetState extends State<CreateSiteEtapas20Widget> {
  late CreateSiteEtapas20Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas20Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas20'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS20_CreateSiteEtapas20_');
      logFirebaseEvent('CreateSiteEtapas20_update_page_state');
      _model.domainsSelected = getJsonField(
        FFAppState().dataSite,
        r'''$.domain''',
      );
      setState(() {});
      logFirebaseEvent('CreateSiteEtapas20_backend_call');
      _model.apiResultDomains = await APIOficialGroup.domainsCall.call(
        authToken: currentAuthenticationToken,
      );

      logFirebaseEvent('CreateSiteEtapas20_update_app_state');
      FFAppState().allDomains = functions.addStringToJson(
          getJsonField(
            (_model.apiResultDomains?.jsonBody ?? ''),
            r'''$.data''',
          ),
          getJsonField(
            FFAppState().dataSite,
            r'''$.domain''',
          ).toString().toString(),
          'sugestions')!;
      setState(() {});
      logFirebaseEvent('CreateSiteEtapas20_update_app_state');
      FFAppState().allDomains = functions.addStringToJson(
          getJsonField(
            FFAppState().allDomains,
            r'''$''',
          ),
          'Outra opção',
          'sugestions')!;
      setState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
                                            'CREATE_SITE_ETAPAS20_Text_diytjtpb_ON_TA');
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
                                            'Selecione como gostaria que ficasse o domínio do seu site',
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
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final domains = getJsonField(
                                              FFAppState().allDomains,
                                              r'''$.sugestions''',
                                            ).toList();

                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: domains.length,
                                              itemBuilder:
                                                  (context, domainsIndex) {
                                                final domainsItem =
                                                    domains[domainsIndex];
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
                                                        'CREATE_SITE_ETAPAS20_Row_6dcsu6ze_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Row_update_page_state');
                                                    _model.domainsSelected =
                                                        getJsonField(
                                                      domainsItem,
                                                      r'''$''',
                                                    );
                                                    setState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (getJsonField(
                                                            domainsItem,
                                                            r'''$''',
                                                          ) !=
                                                          getJsonField(
                                                            _model
                                                                .domainsSelected,
                                                            r'''$''',
                                                          ))
                                                        Icon(
                                                          Icons
                                                              .radio_button_off_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      if (getJsonField(
                                                            domainsItem,
                                                            r'''$''',
                                                          ) ==
                                                          getJsonField(
                                                            _model
                                                                .domainsSelected,
                                                            r'''$''',
                                                          ))
                                                        Icon(
                                                          Icons
                                                              .radio_button_checked_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      Text(
                                                        getJsonField(
                                                          domainsItem,
                                                          r'''$''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (functions.convertJsonToString(
                                                  getJsonField(
                                                _model.domainsSelected,
                                                r'''$''',
                                              )) ==
                                              'Outra opção')
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 15.0, 0.0),
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController,
                                                  focusNode:
                                                      _model.textFieldFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () async {
                                                      logFirebaseEvent(
                                                          'CREATE_SITE_ETAPAS20_TextField_2dynumvf_');
                                                      logFirebaseEvent(
                                                          'TextField_backend_call');
                                                      _model.apiDomainCheck =
                                                          await APIOficialGroup
                                                              .domainCheckCall
                                                              .call(
                                                        authToken:
                                                            currentAuthenticationToken,
                                                        url: _model
                                                            .textController
                                                            .text,
                                                      );

                                                      if (APIOficialGroup
                                                          .domainCheckCall
                                                          .exists(
                                                        (_model.apiDomainCheck
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!) {
                                                        logFirebaseEvent(
                                                            'TextField_show_snack_bar');
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'EXISTE',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: const Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                      } else {
                                                        logFirebaseEvent(
                                                            'TextField_show_snack_bar');
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'NAO',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: const Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                      }

                                                      setState(() {});
                                                    },
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual domínio deseja?',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
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
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  validator: _model
                                                      .textControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                        ],
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
                                                  'CREATE_SITE_ETAPAS20_FINALIZAR_BTN_ON_TA');
                                              var shouldSetState = false;
                                              if (functions.convertJsonToString(
                                                      getJsonField(
                                                    _model.domainsSelected,
                                                    r'''$''',
                                                  )) ==
                                                  'Outra opção') {
                                                logFirebaseEvent(
                                                    'Button_backend_call');
                                                _model.apiDomainCheckUpdate =
                                                    await APIOficialGroup
                                                        .domainCheckCall
                                                        .call(
                                                  authToken:
                                                      currentAuthenticationToken,
                                                  url: _model
                                                      .textController.text,
                                                );

                                                shouldSetState = true;
                                                if (APIOficialGroup
                                                    .domainCheckCall
                                                    .exists(
                                                  (_model.apiDomainCheckUpdate
                                                          ?.jsonBody ??
                                                      ''),
                                                )!) {
                                                  logFirebaseEvent(
                                                      'Button_show_snack_bar');
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Esse domínio já está em uso.',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                  if (shouldSetState) {
                                                    setState(() {});
                                                  }
                                                  return;
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');
                                                  await APIOficialGroup
                                                      .updateSiteCall
                                                      .call(
                                                    authToken:
                                                        currentAuthenticationToken,
                                                    bodyJson: <String, String?>{
                                                      'domain': _model
                                                          .textController.text,
                                                    },
                                                  );
                                                }
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_backend_call');
                                                await APIOficialGroup
                                                    .updateSiteCall
                                                    .call(
                                                  authToken:
                                                      currentAuthenticationToken,
                                                  bodyJson: <String, String?>{
                                                    'domain': getJsonField(
                                                      _model.domainsSelected,
                                                      r'''$''',
                                                    ).toString(),
                                                  },
                                                );
                                              }

                                              logFirebaseEvent(
                                                  'Button_backend_call');
                                              _model.siteResult =
                                                  await APIOficialGroup
                                                      .getSiteCall
                                                      .call(
                                                authToken:
                                                    currentAuthenticationToken,
                                              );

                                              shouldSetState = true;
                                              if (getJsonField(
                                                    (_model.siteResult
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data''',
                                                  ) !=
                                                  null) {
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState().existSite = true;
                                                FFAppState().dataSite =
                                                    getJsonField(
                                                  (_model.siteResult
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.data''',
                                                );
                                                setState(() {});
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState().existSite = false;
                                                setState(() {});
                                              }

                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.pushNamed(
                                                  'CreateSiteEtapas21');

                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                            },
                                            text: 'Finalizar',
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
