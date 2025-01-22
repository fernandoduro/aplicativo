import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'services03_model.dart';
export 'services03_model.dart';

class Services03Widget extends StatefulWidget {
  const Services03Widget({
    super.key,
    required this.adicionadoPeloMais,
    required this.originConfig,
  });

  final bool? adicionadoPeloMais;
  final String? originConfig;

  @override
  State<Services03Widget> createState() => _Services03WidgetState();
}

class _Services03WidgetState extends State<Services03Widget> {
  late Services03Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Services03Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Services03'});
    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.recorrenciaTextController ??= TextEditingController();
    _model.recorrenciaFocusNode ??= FocusNode();

    _model.valorMensalTextController ??= TextEditingController();
    _model.valorMensalFocusNode ??= FocusNode();

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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              'Pacotes que ofereço',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 30.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      35.0, 0.0, 35.0, 20.0),
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
                                                  padding: EdgeInsets.all(16.0),
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
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Nome',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .manrope(),
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
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .nameTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .nameFocusNode,
                                                                    autofocus:
                                                                        false,
                                                                    textCapitalization:
                                                                        TextCapitalization
                                                                            .words,
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
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
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
                                                                          font:
                                                                              GoogleFonts.manrope(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    cursorColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    validator: _model
                                                                        .nameTextControllerValidator
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
                                                                  'Serviços que ofereço',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .manrope(),
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
                                                                            FlutterFlowTheme.of(context).primary,
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
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          if (getJsonField(
                                                                                columnGetServicesResponse.jsonBody,
                                                                                r'''$.data[*].id''',
                                                                              ) !=
                                                                              null)
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
                                                                                width: MediaQuery.sizeOf(context).width * 0.6,
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
                                                                          if (getJsonField(
                                                                                columnGetServicesResponse.jsonBody,
                                                                                r'''$.data[*].id''',
                                                                              ) !=
                                                                              null)
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('SERVICES03_PAGE_Icon_tfqxz7df_ON_TAP');
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
                                                                              child: Icon(
                                                                                Icons.add_box,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 36.0,
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          if (getJsonField(
                                                                                columnGetServicesResponse.jsonBody,
                                                                                r'''$.data[*].id''',
                                                                              ) ==
                                                                              null)
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                multiSelectController: _model.servicosEmptyValueController ??= FormListFieldController<String>(null),
                                                                                options: <String>[],
                                                                                width: MediaQuery.sizeOf(context).width * 0.6,
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
                                                                                isMultiSelect: true,
                                                                                onMultiSelectChanged: (val) => safeSetState(() => _model.servicosEmptyValue = val),
                                                                              ),
                                                                            ),
                                                                          if (getJsonField(
                                                                                columnGetServicesResponse.jsonBody,
                                                                                r'''$.data[*].id''',
                                                                              ) ==
                                                                              null)
                                                                            InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('SERVICES03_PAGE_Icon_024lyvm4_ON_TAP');
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
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Text(
                                                                    'Quantidade de vezes por mês',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.manrope(),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .recorrenciaTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .recorrenciaFocusNode,
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
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
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
                                                                          font:
                                                                              GoogleFonts.manrope(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .number,
                                                                    cursorColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    validator: _model
                                                                        .recorrenciaTextControllerValidator
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
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Text(
                                                                    'Valor mensal ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.manrope(),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .valorMensalTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .valorMensalFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.valorMensalTextController',
                                                                      Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        logFirebaseEvent(
                                                                            'SERVICES03_valorMensal_ON_TEXTFIELD_CHAN');
                                                                        logFirebaseEvent(
                                                                            'valorMensal_update_page_state');
                                                                        _model.valorMascara = int.tryParse(_model
                                                                            .valorMensalTextController
                                                                            .text);
                                                                        safeSetState(
                                                                            () {});
                                                                        logFirebaseEvent(
                                                                            'valorMensal_set_form_field');
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .valorMensalTextController
                                                                              ?.text = functions.formatCurrency(_model.valorMascara?.toString())!;
                                                                          _model
                                                                              .valorMensalFocusNode
                                                                              ?.requestFocus();
                                                                          WidgetsBinding
                                                                              .instance
                                                                              .addPostFrameCallback((_) {
                                                                            _model.valorMensalTextController?.selection =
                                                                                TextSelection.collapsed(
                                                                              offset: _model.valorMensalTextController!.text.length,
                                                                            );
                                                                          });
                                                                        });
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      alignLabelWithHint:
                                                                          false,
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
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
                                                                          font:
                                                                              GoogleFonts.manrope(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .number,
                                                                    cursorColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    validator: _model
                                                                        .valorMensalTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
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
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'SERVICES03_PAGE_Button_8kf7p23q_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Button_validate_form');
                                                                          if (_model.formKey.currentState == null ||
                                                                              !_model.formKey.currentState!.validate()) {
                                                                            return;
                                                                          }
                                                                          if (_model.servicosValue ==
                                                                              null) {
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                content: Text(
                                                                                  'Escolha um serviço para adicionar o pacote.',
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
                                                                          if ((_model.nameTextController.text != null && _model.nameTextController.text != '') &&
                                                                              (_model.servicosValue != null) &&
                                                                              (_model.recorrenciaTextController.text != null && _model.recorrenciaTextController.text != '') &&
                                                                              (_model.valorMensalTextController.text != null && _model.valorMensalTextController.text != '')) {
                                                                            if (_model.editPackage.toString() ==
                                                                                '0') {
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.apiResultey82 = await APIOficialGroup.createPackageCall.call(
                                                                                authToken: currentAuthenticationToken,
                                                                                name: _model.nameTextController.text,
                                                                                recurrency: int.tryParse(_model.recorrenciaTextController.text),
                                                                                monthlyValue: functions.convertStringToDouble(_model.valorMensalTextController.text),
                                                                                serviceIds: _model.servicosValue,
                                                                              );

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
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.apiResultxos1112 = await APIOficialGroup.updatePackagesCall.call(
                                                                                id: _model.editPackage?.toString(),
                                                                                authToken: currentAuthenticationToken,
                                                                                name: _model.nameTextController.text,
                                                                                recurrency: int.tryParse(_model.recorrenciaTextController.text),
                                                                                monthlyValue: double.tryParse(_model.valorMensalTextController.text),
                                                                                serviceIds: _model.servicosValue,
                                                                              );

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
                                                                            }

                                                                            logFirebaseEvent('Button_reset_form_fields');
                                                                            safeSetState(() {
                                                                              _model.nameTextController?.clear();
                                                                              _model.recorrenciaTextController?.clear();
                                                                              _model.valorMensalTextController?.clear();
                                                                            });
                                                                            logFirebaseEvent('Button_reset_form_fields');
                                                                            safeSetState(() {
                                                                              _model.servicosValueController?.reset();
                                                                            });
                                                                            logFirebaseEvent('Button_update_page_state');
                                                                            _model.editPackage =
                                                                                0;
                                                                            safeSetState(() {});
                                                                            if (widget!.adicionadoPeloMais!) {
                                                                              logFirebaseEvent('Button_navigate_back');
                                                                              context.safePop();
                                                                            } else {
                                                                              if ((widget!.originConfig == 'schedule') || (widget!.originConfig == 'client') || (widget!.originConfig == 'newClient')) {
                                                                                logFirebaseEvent('Button_action_block');
                                                                                await action_blocks.firstConfigNavigation(
                                                                                  context,
                                                                                  originConfig: widget!.originConfig,
                                                                                );
                                                                              }
                                                                            }
                                                                          } else {
                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                              SnackBar(
                                                                                content: Text(
                                                                                  'Preencha todos os campos.',
                                                                                  style: TextStyle(
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                                ),
                                                                                duration: Duration(milliseconds: 4000),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                              ),
                                                                            );
                                                                          }

                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        text: _model.editPackage ==
                                                                                0
                                                                            ? 'Salvar informações'
                                                                            : 'Atualizar informações',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.7,
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
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

                                                                  return Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final packages = functions
                                                                          .handleNullList(getJsonField(
                                                                            columnGetPackagesResponse.jsonBody,
                                                                            r'''$.data''',
                                                                          ))
                                                                          .toList()
                                                                          .take(100000)
                                                                          .toList();

                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            packages.length,
                                                                            (packagesIndex) {
                                                                          final packagesItem =
                                                                              packages[packagesIndex];
                                                                          return Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              if (packagesIndex.toString() == '0')
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Seus pacotes',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
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
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        getJsonField(
                                                                                                          packagesItem,
                                                                                                          r'''$.name''',
                                                                                                        ).toString(),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              font: GoogleFonts.manrope(),
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w900,
                                                                                                            ),
                                                                                                      ),
                                                                                                      RichText(
                                                                                                        textScaler: MediaQuery.of(context).textScaler,
                                                                                                        text: TextSpan(
                                                                                                          children: [
                                                                                                            TextSpan(
                                                                                                              text: 'Quantidade: ',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    font: GoogleFonts.manrope(),
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            TextSpan(
                                                                                                              text: getJsonField(
                                                                                                                packagesItem,
                                                                                                                r'''$.recurrency''',
                                                                                                              ).toString(),
                                                                                                              style: TextStyle(),
                                                                                                            )
                                                                                                          ],
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                font: GoogleFonts.manrope(),
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.normal,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      RichText(
                                                                                                        textScaler: MediaQuery.of(context).textScaler,
                                                                                                        text: TextSpan(
                                                                                                          children: [
                                                                                                            TextSpan(
                                                                                                              text: 'Valor mensal: R\$ ',
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    font: GoogleFonts.manrope(),
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            TextSpan(
                                                                                                              text: valueOrDefault<String>(
                                                                                                                functions.formatCurrency(getJsonField(
                                                                                                                  packagesItem,
                                                                                                                  r'''$.monthly_value''',
                                                                                                                ).toString()),
                                                                                                                '-',
                                                                                                              ),
                                                                                                              style: TextStyle(),
                                                                                                            )
                                                                                                          ],
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                font: GoogleFonts.manrope(),
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.normal,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                                              children: [
                                                                                                InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    logFirebaseEvent('SERVICES03_PAGE_Icon_skb2sggg_ON_TAP');
                                                                                                    logFirebaseEvent('Icon_update_page_state');
                                                                                                    _model.editPackage = getJsonField(
                                                                                                      packagesItem,
                                                                                                      r'''$.id''',
                                                                                                    );
                                                                                                    safeSetState(() {});
                                                                                                    await Future.wait([
                                                                                                      Future(() async {
                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.nameTextController?.text = getJsonField(
                                                                                                            packagesItem,
                                                                                                            r'''$.name''',
                                                                                                          ).toString();
                                                                                                        });
                                                                                                      }),
                                                                                                      Future(() async {
                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.recorrenciaTextController?.text = getJsonField(
                                                                                                            packagesItem,
                                                                                                            r'''$.recurrency''',
                                                                                                          ).toString();
                                                                                                        });
                                                                                                      }),
                                                                                                      Future(() async {
                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.valorMensalTextController?.text = getJsonField(
                                                                                                            packagesItem,
                                                                                                            r'''$.monthly_value''',
                                                                                                          ).toString();
                                                                                                        });
                                                                                                      }),
                                                                                                      Future(() async {
                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                        safeSetState(() {
                                                                                                          _model.servicosValueController?.value = getJsonField(
                                                                                                            packagesItem,
                                                                                                            r'''$.services[0].id''',
                                                                                                          );
                                                                                                        });
                                                                                                      }),
                                                                                                    ]);
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.edit,
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    size: 36.0,
                                                                                                  ),
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      logFirebaseEvent('SERVICES03_PAGE_Icon_hm07wy3w_ON_TAP');
                                                                                                      logFirebaseEvent('Icon_alert_dialog');
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return WebViewAware(
                                                                                                                child: AlertDialog(
                                                                                                                  content: Text('Deseja excluir o pacote?'),
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
                                                                                                        logFirebaseEvent('Icon_backend_call');
                                                                                                        await APIOficialGroup.deletePackageCall.call(
                                                                                                          authToken: currentAuthenticationToken,
                                                                                                          id: getJsonField(
                                                                                                            packagesItem,
                                                                                                            r'''$.id''',
                                                                                                          ).toString(),
                                                                                                        );

                                                                                                        logFirebaseEvent('Icon_show_snack_bar');
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
                                                                                                        logFirebaseEvent('Icon_update_page_state');

                                                                                                        safeSetState(() {});
                                                                                                      }
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.delete_outline_outlined,
                                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                                      size: 36.0,
                                                                                                    ),
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
                                                                          );
                                                                        }),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
