import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'new_client02_model.dart';
export 'new_client02_model.dart';

class NewClient02Widget extends StatefulWidget {
  const NewClient02Widget({
    super.key,
    required this.idClient,
  });

  final int? idClient;

  @override
  State<NewClient02Widget> createState() => _NewClient02WidgetState();
}

class _NewClient02WidgetState extends State<NewClient02Widget> {
  late NewClient02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewClient02Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'NewClient02'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('NEW_CLIENT02_NewClient02_ON_INIT_STATE');
      logFirebaseEvent('NewClient02_backend_call');
      _model.apiResultEditClientPage3 =
          await APIOficialGroup.getClientByIDCall.call(
        id: widget.idClient?.toString(),
        authToken: currentAuthenticationToken,
      );

      logFirebaseEvent('NewClient02_update_app_state');
      FFAppState().packagesList = <String, List<dynamic>?>{
        'packages': getJsonField(
          (_model.apiResultEditClientPage3?.jsonBody ?? ''),
          r'''$.data.professional_clients[*].packages''',
          true,
        ),
      };
      safeSetState(() {});
    });

    _model.valorCobrancaTextController ??= TextEditingController();
    _model.valorCobrancaFocusNode ??= FocusNode();

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
      onTap: () => FocusScope.of(context).unfocus(),
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
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.headerHelpModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const HeaderHelpWidget(),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    constraints: BoxConstraints(
                                      minHeight:
                                          MediaQuery.sizeOf(context).height *
                                              0.85,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      35.0, 0.0, 35.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'O que seu cliente ',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 30.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                    TextSpan(
                                                      text: 'está contratando?',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Gloria Hallelujah',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 30.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      35.0, 0.0, 35.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(16.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Form(
                                                          key: _model.formKey,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Pacote contratado',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                              FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: APIOficialGroup
                                                                    .getPackagesCall
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
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final columnGetPackagesResponse =
                                                                      snapshot
                                                                          .data!;

                                                                  return Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (getJsonField(
                                                                            columnGetPackagesResponse.jsonBody,
                                                                            r'''$.data[*].id''',
                                                                          ) !=
                                                                          null)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.pacoteValueController1 ??= FormFieldController<String>(
                                                                                  _model.pacoteValue1 ??= '',
                                                                                ),
                                                                                options: List<String>.from((getJsonField(
                                                                                  columnGetPackagesResponse.jsonBody,
                                                                                  r'''$.data[*].id''',
                                                                                  true,
                                                                                ) as List)
                                                                                    .map<String>((s) => s.toString())
                                                                                    .toList()),
                                                                                optionLabels: (getJsonField(
                                                                                  columnGetPackagesResponse.jsonBody,
                                                                                  r'''$.data[*].name''',
                                                                                  true,
                                                                                ) as List)
                                                                                    .map<String>((s) => s.toString())
                                                                                    .toList(),
                                                                                onChanged: (val) async {
                                                                                  safeSetState(() => _model.pacoteValue1 = val);
                                                                                  logFirebaseEvent('NEW_CLIENT02_Pacote_ON_FORM_WIDGET_SELEC');
                                                                                  logFirebaseEvent('Pacote_backend_call');
                                                                                  _model.apiResultbn2 = await APIOficialGroup.packagesByIdCall.call(
                                                                                    authToken: currentAuthenticationToken,
                                                                                    id: _model.pacoteValue1,
                                                                                  );

                                                                                  if ((_model.apiResultbn2?.succeeded ?? true)) {
                                                                                    logFirebaseEvent('Pacote_set_form_field');
                                                                                    safeSetState(() {
                                                                                      _model.valorCobrancaTextController?.text = functions.formatCurrency(getJsonField(
                                                                                        (_model.apiResultbn2?.jsonBody ?? ''),
                                                                                        r'''$.data.monthly_value''',
                                                                                      ).toString())!;
                                                                                      _model.valorCobrancaFocusNode?.requestFocus();
                                                                                      WidgetsBinding.instance.addPostFrameCallback((_) {
                                                                                        _model.valorCobrancaTextController?.selection = TextSelection.collapsed(
                                                                                          offset: _model.valorCobrancaTextController!.text.length,
                                                                                        );
                                                                                      });
                                                                                    });
                                                                                    logFirebaseEvent('Pacote_update_page_state');
                                                                                    _model.packagesAdd = getJsonField(
                                                                                      (_model.apiResultbn2?.jsonBody ?? ''),
                                                                                      r'''$.data''',
                                                                                    );
                                                                                    safeSetState(() {});
                                                                                    logFirebaseEvent('Pacote_update_page_state');
                                                                                    _model.packagesAdd = functions.updateValueToJson(
                                                                                        getJsonField(
                                                                                          _model.packagesAdd,
                                                                                          r'''$''',
                                                                                        ),
                                                                                        'monthly_value',
                                                                                        _model.valorCobrancaTextController.text);
                                                                                    safeSetState(() {});
                                                                                  }

                                                                                  safeSetState(() {});
                                                                                },
                                                                                width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                height: 40.0,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                hintText: 'Escolha os pacotes',
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
                                                                                margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                hidesUnderline: true,
                                                                                isOverButton: false,
                                                                                isSearchable: false,
                                                                                isMultiSelect: false,
                                                                              ),
                                                                            ),
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('NEW_CLIENT02_PAGE_Icon_b2qu2dfr_ON_TAP');
                                                                                logFirebaseEvent('Icon_navigate_to');

                                                                                context.pushNamed(
                                                                                  'Services03',
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
                                                                              },
                                                                              child: Icon(
                                                                                Icons.add_box,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 36.0,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      if (getJsonField(
                                                                            columnGetPackagesResponse.jsonBody,
                                                                            r'''$.data[*].id''',
                                                                          ) ==
                                                                          null)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.pacoteValueController2 ??= FormFieldController<String>(
                                                                                  _model.pacoteValue2 ??= '',
                                                                                ),
                                                                                options: List<String>.from(<String>[]),
                                                                                optionLabels: const <String>[],
                                                                                onChanged: (val) => safeSetState(() => _model.pacoteValue2 = val),
                                                                                width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                height: 40.0,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                hintText: 'Escolha os pacotes',
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
                                                                                margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                hidesUnderline: true,
                                                                                isOverButton: false,
                                                                                isSearchable: false,
                                                                                isMultiSelect: false,
                                                                              ),
                                                                            ),
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('NEW_CLIENT02_PAGE_Icon_5whqn6qd_ON_TAP');
                                                                                logFirebaseEvent('Icon_navigate_to');

                                                                                context.pushNamed(
                                                                                  'Services03',
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
                                                                              },
                                                                              child: Icon(
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
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Valor mensal',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            8.0),
                                                                child:
                                                                    SizedBox(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .valorCobrancaTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .valorCobrancaFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.valorCobrancaTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        logFirebaseEvent(
                                                                            'NEW_CLIENT02_valorCobranca_ON_TEXTFIELD_');
                                                                        logFirebaseEvent(
                                                                            'valorCobranca_update_page_state');
                                                                        _model.packagesAdd = functions.updateValueToJson(
                                                                            getJsonField(
                                                                              _model.packagesAdd,
                                                                              r'''$''',
                                                                            ),
                                                                            'monthly_value',
                                                                            _model.valorCobrancaTextController.text);
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    autofillHints: const [
                                                                      AutofillHints
                                                                          .email
                                                                    ],
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          'Quanto cobrar',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    validator: _model
                                                                        .valorCobrancaTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
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
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'NEW_CLIENT02_ADICIONAR__LISTA_BTN_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Button_update_page_state');
                                                                          _model.packagesAdd = functions.updateValueToJson(
                                                                              getJsonField(
                                                                                _model.packagesAdd,
                                                                                r'''$''',
                                                                              ),
                                                                              'monthly_value',
                                                                              _model.valorCobrancaTextController.text);
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Button_update_app_state');
                                                                          FFAppState().packagesList = functions.addJsonToJson(
                                                                              getJsonField(
                                                                                FFAppState().packagesList,
                                                                                r'''$''',
                                                                              ),
                                                                              getJsonField(
                                                                                _model.packagesAdd,
                                                                                r'''$''',
                                                                              ),
                                                                              'packages');
                                                                          safeSetState(
                                                                              () {});
                                                                          logFirebaseEvent(
                                                                              'Button_show_snack_bar');
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                getJsonField(
                                                                                  _model.packagesAdd,
                                                                                  r'''$''',
                                                                                ).toString(),
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: const Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                            ),
                                                                          );
                                                                        },
                                                                        text:
                                                                            'Adicionar à lista',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.7,
                                                                          height:
                                                                              44.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Manrope',
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          elevation:
                                                                              3.0,
                                                                          borderSide:
                                                                              const BorderSide(
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
                                                                  if (functions
                                                                          .existElementList(
                                                                              getJsonField(
                                                                        FFAppState()
                                                                            .packagesList,
                                                                        r'''$.packages''',
                                                                        true,
                                                                      )) ??
                                                                      true)
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Seus pacotes',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final packs =
                                                                          getJsonField(
                                                                        FFAppState()
                                                                            .packagesList,
                                                                        r'''$.packages''',
                                                                      ).toList();

                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            packs.length,
                                                                            (packsIndex) {
                                                                          final packsItem =
                                                                              packs[packsIndex];
                                                                          return Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                              child: Container(
                                                                                width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                height: 100.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                  ),
                                                                                ),
                                                                                child: SizedBox(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  child: Stack(
                                                                                    children: [
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    getJsonField(
                                                                                                      packsItem,
                                                                                                      r'''$.name''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w900,
                                                                                                        ),
                                                                                                  ),
                                                                                                  RichText(
                                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                                    text: TextSpan(
                                                                                                      children: [
                                                                                                        TextSpan(
                                                                                                          text: 'R\$ ',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Manrope',
                                                                                                                letterSpacing: 0.0,
                                                                                                              ),
                                                                                                        ),
                                                                                                        TextSpan(
                                                                                                          text: () {
                                                                                                            if (getJsonField(
                                                                                                                  packsItem,
                                                                                                                  r'''$.pivot.monthly_value''',
                                                                                                                ) !=
                                                                                                                null) {
                                                                                                              return valueOrDefault<String>(
                                                                                                                functions.replaceAll(
                                                                                                                    getJsonField(
                                                                                                                      packsItem,
                                                                                                                      r'''$.pivot.monthly_value''',
                                                                                                                    ).toString(),
                                                                                                                    '.',
                                                                                                                    ','),
                                                                                                                '-',
                                                                                                              );
                                                                                                            } else if (getJsonField(
                                                                                                                  packsItem,
                                                                                                                  r'''$.monthly_value''',
                                                                                                                ) !=
                                                                                                                null) {
                                                                                                              return valueOrDefault<String>(
                                                                                                                functions.replaceAll(
                                                                                                                    getJsonField(
                                                                                                                      packsItem,
                                                                                                                      r'''$.monthly_value''',
                                                                                                                    ).toString(),
                                                                                                                    '.',
                                                                                                                    ','),
                                                                                                                '-',
                                                                                                              );
                                                                                                            } else {
                                                                                                              return '';
                                                                                                            }
                                                                                                          }(),
                                                                                                          style: const TextStyle(),
                                                                                                        )
                                                                                                      ],
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Manrope',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('NEW_CLIENT02_PAGE_Icon_552gqb7l_ON_TAP');
                                                                                                  logFirebaseEvent('Icon_alert_dialog');
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return WebViewAware(
                                                                                                            child: AlertDialog(
                                                                                                              content: const Text('Deseja excluir o pacote?'),
                                                                                                              actions: [
                                                                                                                TextButton(
                                                                                                                  onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                  child: const Text('Não'),
                                                                                                                ),
                                                                                                                TextButton(
                                                                                                                  onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                  child: const Text('Sim'),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ) ??
                                                                                                      false;
                                                                                                  if (confirmDialogResponse) {
                                                                                                    logFirebaseEvent('Icon_update_app_state');
                                                                                                    FFAppState().packagesList = functions.removeJsonToJson(
                                                                                                        getJsonField(
                                                                                                          FFAppState().packagesList,
                                                                                                          r'''$''',
                                                                                                        ),
                                                                                                        packsIndex,
                                                                                                        'packages');
                                                                                                    safeSetState(() {});
                                                                                                    logFirebaseEvent('Icon_show_snack_bar');
                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                      SnackBar(
                                                                                                        content: Text(
                                                                                                          'Pacote removido com sucesso.',
                                                                                                          style: TextStyle(
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          ),
                                                                                                        ),
                                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.delete_outline_outlined,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 36.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
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
                                                                    if (functions
                                                                            .existElementList(getJsonField(
                                                                          FFAppState()
                                                                              .packagesList,
                                                                          r'''$.packages''',
                                                                          true,
                                                                        )) ??
                                                                        true)
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            logFirebaseEvent('NEW_CLIENT02_PAGE_CANCELAR_BTN_ON_TAP');
                                                                            logFirebaseEvent('Button_navigate_back');
                                                                            context.safePop();
                                                                          },
                                                                          text:
                                                                              'Cancelar',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.34,
                                                                            height:
                                                                                44.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                3.0,
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (functions
                                                                            .existElementList(getJsonField(
                                                                          FFAppState()
                                                                              .packagesList,
                                                                          r'''$.packages''',
                                                                          true,
                                                                        )) ??
                                                                        true)
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            16.0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed: !functions.existElementList(getJsonField(
                                                                            FFAppState().packagesList,
                                                                            r'''$.packages''',
                                                                            true,
                                                                          ))!
                                                                              ? null
                                                                              : () async {
                                                                                  logFirebaseEvent('NEW_CLIENT02_PAGE_AVANAR_BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                  _model.apiResult0sd = await APIOficialGroup.editClientPackagesCall.call(
                                                                                    authToken: currentAuthenticationToken,
                                                                                    id: widget.idClient?.toString(),
                                                                                    packagesJson: functions.filterPackages(getJsonField(
                                                                                      FFAppState().packagesList,
                                                                                      r'''$.packages''',
                                                                                    )),
                                                                                  );

                                                                                  if ((_model.apiResult0sd?.succeeded ?? true)) {
                                                                                    logFirebaseEvent('Button_navigate_to');

                                                                                    context.pushNamed(
                                                                                      'NewClient03',
                                                                                      queryParameters: {
                                                                                        'idClient': serializeParam(
                                                                                          widget.idClient,
                                                                                          ParamType.int,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  } else {
                                                                                    logFirebaseEvent('Button_show_snack_bar');
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Erro ao adicionar o pacote. Tente novamente!',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                      ),
                                                                                    );
                                                                                  }

                                                                                  safeSetState(() {});
                                                                                },
                                                                          text:
                                                                              'Avançar',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.34,
                                                                            height:
                                                                                44.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                3.0,
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                            disabledColor:
                                                                                const Color(0xFFACACAC),
                                                                            disabledTextColor:
                                                                                const Color(0xFFD9D9D9),
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
                                child: const FooterWhiteWidget(),
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
