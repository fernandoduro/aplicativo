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
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_site_etapas17_model.dart';
export 'create_site_etapas17_model.dart';

class CreateSiteEtapas17Widget extends StatefulWidget {
  const CreateSiteEtapas17Widget({super.key});

  @override
  State<CreateSiteEtapas17Widget> createState() =>
      _CreateSiteEtapas17WidgetState();
}

class _CreateSiteEtapas17WidgetState extends State<CreateSiteEtapas17Widget> {
  late CreateSiteEtapas17Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas17Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas17'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS17_CreateSiteEtapas17_');
      logFirebaseEvent('CreateSiteEtapas17_custom_action');
      await actions.lockOrientation();
      logFirebaseEvent('CreateSiteEtapas17_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
      logFirebaseEvent('CreateSiteEtapas17_update_app_state');
      FFAppState().loading = false;
      safeSetState(() {});
    });

    _model.cepTextController ??= TextEditingController(
        text: functions.removeNullString(getJsonField(
      FFAppState().dataSite,
      r'''$.cep''',
    ).toString().toString()));
    _model.cepFocusNode ??= FocusNode();

    _model.ruaTextController ??= TextEditingController(
        text: functions.removeNullString(getJsonField(
      FFAppState().dataSite,
      r'''$.address''',
    ).toString().toString()));
    _model.ruaFocusNode ??= FocusNode();

    _model.numeroTextController ??= TextEditingController(
        text: functions.removeNullString(getJsonField(
      FFAppState().dataSite,
      r'''$.number''',
    ).toString().toString()));
    _model.numeroFocusNode ??= FocusNode();

    _model.complementoTextController ??= TextEditingController(
        text: functions.removeNullString(getJsonField(
      FFAppState().dataSite,
      r'''$.complement''',
    ).toString().toString()));
    _model.complementoFocusNode ??= FocusNode();

    _model.bairroTextController ??= TextEditingController(
        text: functions.removeNullString(getJsonField(
      FFAppState().dataSite,
      r'''$.neighborhood''',
    ).toString().toString()));
    _model.bairroFocusNode ??= FocusNode();

    _model.estadoTextController ??= TextEditingController(
        text: functions.removeNullString(getJsonField(
      FFAppState().dataSite,
      r'''$.uf''',
    ).toString().toString()));
    _model.estadoFocusNode ??= FocusNode();

    _model.cidadeTextController ??= TextEditingController(
        text: functions.removeNullString(getJsonField(
      FFAppState().dataSite,
      r'''$.city''',
    ).toString().toString()));
    _model.cidadeFocusNode ??= FocusNode();

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
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.85,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 0.0, 16.0,
                                                          16.0),
                                                  child: Text(
                                                    'Preencha seu endereço',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 5.0, 15.0, 5.0),
                                                child: TextFormField(
                                                  controller:
                                                      _model.cepTextController,
                                                  focusNode:
                                                      _model.cepFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.cepTextController',
                                                    Duration(milliseconds: 100),
                                                    () async {
                                                      logFirebaseEvent(
                                                          'CREATE_SITE_ETAPAS17_CEP_ON_TEXTFIELD_CH');
                                                      logFirebaseEvent(
                                                          'CEP_custom_action');
                                                      _model.countCaracteres =
                                                          await actions
                                                              .countCaracteresCEP(
                                                        _model.cepTextController
                                                            .text,
                                                      );
                                                      if (_model
                                                          .countCaracteres!) {
                                                        logFirebaseEvent(
                                                            'CEP_update_app_state');
                                                        FFAppState().loading =
                                                            true;
                                                        safeSetState(() {});
                                                        logFirebaseEvent(
                                                            'CEP_backend_call');
                                                        _model.apiResultCEP =
                                                            await APIOficialGroup
                                                                .cepCall
                                                                .call(
                                                          cep: _model
                                                              .cepTextController
                                                              .text,
                                                          authToken:
                                                              currentAuthenticationToken,
                                                        );

                                                        logFirebaseEvent(
                                                            'CEP_set_form_field');
                                                        safeSetState(() {
                                                          _model.ruaTextController
                                                                  ?.text =
                                                              getJsonField(
                                                            (_model.apiResultCEP
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.logradouro''',
                                                          ).toString();
                                                        });
                                                        logFirebaseEvent(
                                                            'CEP_set_form_field');
                                                        safeSetState(() {
                                                          _model.bairroTextController
                                                                  ?.text =
                                                              getJsonField(
                                                            (_model.apiResultCEP
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.bairro''',
                                                          ).toString();
                                                        });
                                                        logFirebaseEvent(
                                                            'CEP_set_form_field');
                                                        safeSetState(() {
                                                          _model.estadoTextController
                                                                  ?.text =
                                                              getJsonField(
                                                            (_model.apiResultCEP
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.uf''',
                                                          ).toString();
                                                        });
                                                        logFirebaseEvent(
                                                            'CEP_set_form_field');
                                                        safeSetState(() {
                                                          _model.cidadeTextController
                                                                  ?.text =
                                                              getJsonField(
                                                            (_model.apiResultCEP
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.localidade''',
                                                          ).toString();
                                                        });
                                                      }
                                                      logFirebaseEvent(
                                                          'CEP_update_app_state');
                                                      FFAppState().loading =
                                                          false;
                                                      safeSetState(() {});

                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'CEP',
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
                                                      .cepTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              if (FFAppState().loading == false)
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  5.0,
                                                                  15.0,
                                                                  5.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .ruaTextController,
                                                        focusNode:
                                                            _model.ruaFocusNode,
                                                        autofocus: false,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Endereço',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
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
                                                        keyboardType:
                                                            TextInputType
                                                                .streetAddress,
                                                        validator: _model
                                                            .ruaTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        5.0,
                                                                        15.0,
                                                                        5.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .numeroTextController,
                                                              focusNode: _model
                                                                  .numeroFocusNode,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                '_model.numeroTextController',
                                                                Duration(
                                                                    milliseconds:
                                                                        30),
                                                                () async {
                                                                  logFirebaseEvent(
                                                                      'CREATE_SITE_ETAPAS17_Numero_ON_TEXTFIELD');
                                                                  logFirebaseEvent(
                                                                      'Numero_update_app_state');

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                              autofocus: false,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Numero',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                              validator: _model
                                                                  .numeroTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        5.0,
                                                                        15.0,
                                                                        5.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .complementoTextController,
                                                              focusNode: _model
                                                                  .complementoFocusNode,
                                                              autofocus: false,
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .sentences,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Complemento',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                enabledBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    UnderlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                              validator: _model
                                                                  .complementoTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  5.0,
                                                                  15.0,
                                                                  5.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .bairroTextController,
                                                        focusNode: _model
                                                            .bairroFocusNode,
                                                        autofocus: false,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Bairro',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
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
                                                        validator: _model
                                                            .bairroTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  5.0,
                                                                  15.0,
                                                                  5.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .estadoTextController,
                                                        focusNode: _model
                                                            .estadoFocusNode,
                                                        autofocus: false,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Estado',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
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
                                                        validator: _model
                                                            .estadoTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  5.0,
                                                                  15.0,
                                                                  5.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .cidadeTextController,
                                                        focusNode: _model
                                                            .cidadeFocusNode,
                                                        autofocus: false,
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Cidade',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
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
                                                        validator: _model
                                                            .cidadeTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  40.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed: ((_model.ruaTextController.text == null || _model.ruaTextController.text == '') &&
                                                                        (/* NOT RECOMMENDED */ _model.cepTextController.text ==
                                                                            'true') &&
                                                                        (/* NOT RECOMMENDED */ _model.bairroTextController.text ==
                                                                            'true') &&
                                                                        (_model.estadoTextController.text !=
                                                                                null &&
                                                                            _model.estadoTextController.text !=
                                                                                '') &&
                                                                        (_model.cidadeTextController.text !=
                                                                                null &&
                                                                            _model.cidadeTextController.text !=
                                                                                '') &&
                                                                        (_model.numeroTextController.text !=
                                                                                null &&
                                                                            _model.numeroTextController.text !=
                                                                                ''))
                                                                    ? null
                                                                    : () async {
                                                                        logFirebaseEvent(
                                                                            'CREATE_SITE_ETAPAS17_AVANAR_BTN_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'Button_backend_call');
                                                                        _model.updatesite17 = await APIOficialGroup
                                                                            .updateSiteCall
                                                                            .call(
                                                                          authToken:
                                                                              currentAuthenticationToken,
                                                                          bodyJson: <String,
                                                                              String?>{
                                                                            'cep':
                                                                                _model.cepTextController.text,
                                                                            'address':
                                                                                _model.ruaTextController.text,
                                                                            'number':
                                                                                _model.numeroTextController.text,
                                                                            'complement':
                                                                                _model.complementoTextController.text,
                                                                            'neighborhood':
                                                                                _model.bairroTextController.text,
                                                                            'city':
                                                                                _model.cidadeTextController.text,
                                                                            'uf':
                                                                                _model.estadoTextController.text,
                                                                          },
                                                                        );

                                                                        logFirebaseEvent(
                                                                            'Button_update_app_state');
                                                                        FFAppState().dataSite =
                                                                            getJsonField(
                                                                          (_model.updatesite17?.jsonBody ??
                                                                              ''),
                                                                          r'''$.data''',
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                        logFirebaseEvent(
                                                                            'Button_backend_call');
                                                                        _model.listScheduleCode3 = await APIOficialGroup
                                                                            .listScheduleCall
                                                                            .call(
                                                                          authToken:
                                                                              currentAuthenticationToken,
                                                                          dataFiltro:
                                                                              dateTimeFormat(
                                                                            "y-MM-d",
                                                                            random_data.randomDate(),
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                        );

                                                                        if (functions.convertJsonToString(getJsonField(
                                                                              (_model.listScheduleCode3?.jsonBody ?? ''),
                                                                              r'''$.error_code''',
                                                                            )) ==
                                                                            'no_schedule') {
                                                                          logFirebaseEvent(
                                                                              'Button_navigate_to');

                                                                          context
                                                                              .pushNamed('CreateSiteEtapas18');
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Button_navigate_to');

                                                                          context
                                                                              .pushNamed('CreateSiteEtapas19');
                                                                        }

                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                text: 'Avançar',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.8,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  disabledColor:
                                                                      Color(
                                                                          0xFFACACAC),
                                                                  disabledTextColor:
                                                                      Color(
                                                                          0xFFD9D9D9),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (FFAppState().loading == true)
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/circular_progress_indicator_small.gif',
                                                    width: 50.0,
                                                    height: 50.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                            ],
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
  }
}
