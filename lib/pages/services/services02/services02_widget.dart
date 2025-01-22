import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'services02_model.dart';
export 'services02_model.dart';

class Services02Widget extends StatefulWidget {
  const Services02Widget({
    super.key,
    required this.adicionadoPeloMais,
    required this.originConfig,
  });

  final bool? adicionadoPeloMais;
  final String? originConfig;

  @override
  State<Services02Widget> createState() => _Services02WidgetState();
}

class _Services02WidgetState extends State<Services02Widget> {
  late Services02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Services02Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Services02'});
    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.durationTextController ??= TextEditingController();
    _model.durationFocusNode ??= FocusNode();

    _model.extraDurationTextController ??= TextEditingController();
    _model.extraDurationFocusNode ??= FocusNode();

    _model.individualValue = true;
    _model.maxclientsTextController ??= TextEditingController();
    _model.maxclientsFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      Stack(
                        children: [
                          Stack(
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
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .height *
                                                              0.85,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        RichText(
                                                                      textScaler:
                                                                          MediaQuery.of(context)
                                                                              .textScaler,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                'Meus serviços',
                                                                            style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                  font: GoogleFonts.poppins(),
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 30.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .displaySmall
                                                                            .override(
                                                                              font: GoogleFonts.poppins(),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 30.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          35.0,
                                                                          0.0,
                                                                          35.0,
                                                                          20.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              16.0),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Form(
                                                                          key: _model
                                                                              .formKey,
                                                                          autovalidateMode:
                                                                              AutovalidateMode.disabled,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Serviços que ofereço',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.manrope(),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  child: TextFormField(
                                                                                    controller: _model.nameTextController,
                                                                                    focusNode: _model.nameFocusNode,
                                                                                    autofocus: false,
                                                                                    textCapitalization: TextCapitalization.words,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      isDense: true,
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            font: GoogleFonts.manrope(),
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'Sessão, Avaliação… ',
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            font: GoogleFonts.manrope(),
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x00000000),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x00000000),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                    validator: _model.nameTextControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                  child: Text(
                                                                                    'Duração máxima (em minutos)',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  child: TextFormField(
                                                                                    controller: _model.durationTextController,
                                                                                    focusNode: _model.durationFocusNode,
                                                                                    autofocus: false,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      isDense: true,
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            font: GoogleFonts.manrope(),
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            font: GoogleFonts.manrope(),
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x00000000),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x00000000),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    keyboardType: TextInputType.number,
                                                                                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                    validator: _model.durationTextControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                  child: Text(
                                                                                    'Tempo de intervalo (em minutos)',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  child: TextFormField(
                                                                                    controller: _model.extraDurationTextController,
                                                                                    focusNode: _model.extraDurationFocusNode,
                                                                                    autofocus: false,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      isDense: true,
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            font: GoogleFonts.manrope(),
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            font: GoogleFonts.manrope(),
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x00000000),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0x00000000),
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      errorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    keyboardType: TextInputType.number,
                                                                                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                    validator: _model.extraDurationTextControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Serviço individual',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.manrope(),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        Switch.adaptive(
                                                                                          value: _model.individualValue!,
                                                                                          onChanged: (newValue) async {
                                                                                            safeSetState(() => _model.individualValue = newValue!);
                                                                                          },
                                                                                          activeColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                          inactiveTrackColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (_model.individualValue == false)
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                        child: Text(
                                                                                          'Máximo de pessoas por atendimento',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.manrope(),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        child: TextFormField(
                                                                                          controller: _model.maxclientsTextController,
                                                                                          focusNode: _model.maxclientsFocusNode,
                                                                                          autofocus: false,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            isDense: true,
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  font: GoogleFonts.manrope(),
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  font: GoogleFonts.manrope(),
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            enabledBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0x00000000),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0x00000000),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            filled: true,
                                                                                            fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                font: GoogleFonts.manrope(),
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          keyboardType: TextInputType.number,
                                                                                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                          validator: _model.maxclientsTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          logFirebaseEvent('SERVICES02_PAGE_Button_kxunrw3s_ON_TAP');
                                                                                          logFirebaseEvent('Button_validate_form');
                                                                                          if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                            return;
                                                                                          }
                                                                                          if ((_model.nameTextController.text != null && _model.nameTextController.text != '') && (_model.durationTextController.text != null && _model.durationTextController.text != '')) {
                                                                                            if (_model.individualValue == true) {
                                                                                              logFirebaseEvent('Button_set_form_field');
                                                                                              safeSetState(() {
                                                                                                _model.maxclientsTextController?.text = '';
                                                                                              });
                                                                                            }
                                                                                            if (_model.editService.toString() == '0') {
                                                                                              logFirebaseEvent('Button_backend_call');
                                                                                              _model.apiResultey8 = await APIOficialGroup.createServiceCall.call(
                                                                                                authToken: currentAuthenticationToken,
                                                                                                name: _model.nameTextController.text,
                                                                                                durantion: int.tryParse(_model.durationTextController.text),
                                                                                                isSingularClient: _model.individualValue,
                                                                                                maxClients: int.tryParse(_model.maxclientsTextController.text),
                                                                                                extraDuration: _model.extraDurationTextController.text,
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
                                                                                              _model.apiResultxos11 = await APIOficialGroup.updateServiceCall.call(
                                                                                                authToken: currentAuthenticationToken,
                                                                                                id: _model.editService.toString(),
                                                                                                name: _model.nameTextController.text,
                                                                                                duration: int.tryParse(_model.durationTextController.text),
                                                                                                isSingularClient: _model.individualValue,
                                                                                                maxClients: int.tryParse(_model.maxclientsTextController.text),
                                                                                                extraDuration: _model.extraDurationTextController.text,
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
                                                                                              _model.durationTextController?.clear();
                                                                                              _model.maxclientsTextController?.clear();
                                                                                              _model.extraDurationTextController?.clear();
                                                                                            });
                                                                                            logFirebaseEvent('Button_reset_form_fields');
                                                                                            safeSetState(() {
                                                                                              _model.individualValue = true;
                                                                                            });
                                                                                            logFirebaseEvent('Button_update_page_state');
                                                                                            _model.editService = 0;
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

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        text: _model.editService == 0 ? 'Salvar informações' : 'Atualizar informações',
                                                                                        options: FFButtonOptions(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                          height: 44.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                font: GoogleFonts.manrope(),
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          elevation: 3.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              FutureBuilder<ApiCallResponse>(
                                                                                future: APIOficialGroup.getServicesCall.call(
                                                                                  authToken: currentAuthenticationToken,
                                                                                ),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        child: CircularProgressIndicator(
                                                                                          valueColor: AlwaysStoppedAnimation<Color>(
                                                                                            FlutterFlowTheme.of(context).primary,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  final columnGetServicesResponse = snapshot.data!;

                                                                                  return Builder(
                                                                                    builder: (context) {
                                                                                      final servicesList = functions
                                                                                          .handleNullList(getJsonField(
                                                                                            columnGetServicesResponse.jsonBody,
                                                                                            r'''$.data''',
                                                                                          ))
                                                                                          .toList()
                                                                                          .take(1000)
                                                                                          .toList();

                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: List.generate(servicesList.length, (servicesListIndex) {
                                                                                          final servicesListItem = servicesList[servicesListIndex];
                                                                                          return Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (servicesListIndex.toString() == '0')
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Seus serviços',
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
                                                                                                                          servicesListItem,
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
                                                                                                                              text: 'Duração: ',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    font: GoogleFonts.manrope(),
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                            TextSpan(
                                                                                                                              text: getJsonField(
                                                                                                                                servicesListItem,
                                                                                                                                r'''$.duration''',
                                                                                                                              ).toString(),
                                                                                                                              style: TextStyle(),
                                                                                                                            ),
                                                                                                                            TextSpan(
                                                                                                                              text: ' minutos',
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
                                                                                                                      Row(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        children: [
                                                                                                                          if (functions
                                                                                                                                  .convertStrintToInt(getJsonField(
                                                                                                                                    servicesListItem,
                                                                                                                                    r'''$.is_singular_client''',
                                                                                                                                  ).toString())
                                                                                                                                  .toString() !=
                                                                                                                              '1')
                                                                                                                            Text(
                                                                                                                              'Serviço em grupo ',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    font: GoogleFonts.manrope(),
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          if (functions
                                                                                                                                  .convertStrintToInt(getJsonField(
                                                                                                                                    servicesListItem,
                                                                                                                                    r'''$.is_singular_client''',
                                                                                                                                  ).toString())
                                                                                                                                  .toString() ==
                                                                                                                              '1')
                                                                                                                            Text(
                                                                                                                              'Serviço individual ',
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    font: GoogleFonts.manrope(),
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                      if (functions
                                                                                                                              .convertStrintToInt(getJsonField(
                                                                                                                                servicesListItem,
                                                                                                                                r'''$.is_singular_client''',
                                                                                                                              ).toString())
                                                                                                                              .toString() !=
                                                                                                                          '1')
                                                                                                                        RichText(
                                                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                                                          text: TextSpan(
                                                                                                                            children: [
                                                                                                                              TextSpan(
                                                                                                                                text: 'Pessoas por atendimento: ',
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      font: GoogleFonts.manrope(),
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w500,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                              TextSpan(
                                                                                                                                text: getJsonField(
                                                                                                                                  servicesListItem,
                                                                                                                                  r'''$.max_clients''',
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
                                                                                                                    logFirebaseEvent('SERVICES02_PAGE_Icon_daibsofw_ON_TAP');
                                                                                                                    logFirebaseEvent('Icon_update_page_state');
                                                                                                                    _model.editService = getJsonField(
                                                                                                                      servicesListItem,
                                                                                                                      r'''$.id''',
                                                                                                                    );
                                                                                                                    safeSetState(() {});
                                                                                                                    await Future.wait([
                                                                                                                      Future(() async {
                                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                                        safeSetState(() {
                                                                                                                          _model.nameTextController?.text = getJsonField(
                                                                                                                            servicesListItem,
                                                                                                                            r'''$.name''',
                                                                                                                          ).toString();
                                                                                                                        });
                                                                                                                      }),
                                                                                                                      Future(() async {
                                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                                        safeSetState(() {
                                                                                                                          _model.durationTextController?.text = getJsonField(
                                                                                                                            servicesListItem,
                                                                                                                            r'''$.original_duration''',
                                                                                                                          ).toString();
                                                                                                                        });
                                                                                                                      }),
                                                                                                                      Future(() async {
                                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                                        safeSetState(() {
                                                                                                                          _model.maxclientsTextController?.text = functions.removeNullString(getJsonField(
                                                                                                                            servicesListItem,
                                                                                                                            r'''$.max_clients''',
                                                                                                                          ).toString())!;
                                                                                                                        });
                                                                                                                      }),
                                                                                                                      Future(() async {
                                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                                        safeSetState(() {
                                                                                                                          _model.individualValue = valueOrDefault<bool>(
                                                                                                                            functions
                                                                                                                                        .convertStrintToInt(getJsonField(
                                                                                                                                          servicesListItem,
                                                                                                                                          r'''$.is_singular_client''',
                                                                                                                                        ).toString())
                                                                                                                                        .toString() ==
                                                                                                                                    '1'
                                                                                                                                ? true
                                                                                                                                : false,
                                                                                                                            true,
                                                                                                                          );
                                                                                                                        });
                                                                                                                      }),
                                                                                                                      Future(() async {
                                                                                                                        logFirebaseEvent('Icon_set_form_field');
                                                                                                                        safeSetState(() {
                                                                                                                          _model.extraDurationTextController?.text = getJsonField(
                                                                                                                            servicesListItem,
                                                                                                                            r'''$.extra_duration''',
                                                                                                                          ).toString();
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
                                                                                                                      logFirebaseEvent('SERVICES02_PAGE_Icon_12vtgup5_ON_TAP');
                                                                                                                      logFirebaseEvent('Icon_alert_dialog');
                                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                                            context: context,
                                                                                                                            builder: (alertDialogContext) {
                                                                                                                              return WebViewAware(
                                                                                                                                child: AlertDialog(
                                                                                                                                  content: Text('Deseja excluir o serviço?'),
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
                                                                                                                        await APIOficialGroup.deleteServiceCall.call(
                                                                                                                          authToken: currentAuthenticationToken,
                                                                                                                          id: getJsonField(
                                                                                                                            servicesListItem,
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
                                                updateCallback: () =>
                                                    safeSetState(() {}),
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
