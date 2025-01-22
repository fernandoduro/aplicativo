import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'new_client01_model.dart';
export 'new_client01_model.dart';

class NewClient01Widget extends StatefulWidget {
  const NewClient01Widget({
    super.key,
    this.idClient,
    required this.adicionadoPeloMais,
    this.originConfig,
    this.dateSelected,
    this.hourSelected,
    this.existAppointment,
    this.scheduleJson,
    this.isAddNewClient,
    this.idClientSelected,
    this.situacao,
  });

  final int? idClient;
  final bool? adicionadoPeloMais;
  final String? originConfig;
  final DateTime? dateSelected;
  final String? hourSelected;
  final bool? existAppointment;
  final dynamic scheduleJson;
  final bool? isAddNewClient;
  final int? idClientSelected;
  final String? situacao;

  @override
  State<NewClient01Widget> createState() => _NewClient01WidgetState();
}

class _NewClient01WidgetState extends State<NewClient01Widget> {
  late NewClient01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewClient01Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'NewClient01'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('NEW_CLIENT01_NewClient01_ON_INIT_STATE');
      if (widget.idClient != null) {
        logFirebaseEvent('NewClient01_backend_call');
        _model.apiResultEditClient =
            await APIOficialGroup.getClientByIDCall.call(
          id: widget.idClient?.toString(),
          authToken: currentAuthenticationToken,
        );

        logFirebaseEvent('NewClient01_set_form_field');
        safeSetState(() {
          _model.nomeTextController?.text = getJsonField(
            (_model.apiResultEditClient?.jsonBody ?? ''),
            r'''$.data.professional_clients[0].name''',
          ).toString().toString();
        });
        logFirebaseEvent('NewClient01_set_form_field');
        safeSetState(() {
          _model.whatsappTextController?.text =
              functions.removeNullString(getJsonField(
            (_model.apiResultEditClient?.jsonBody ?? ''),
            r'''$.data.professional_clients[0].cellphone[0]''',
          ).toString().toString())!;
          _model.whatsappMask.updateMask(
            newValue: TextEditingValue(
              text: _model.whatsappTextController!.text,
            ),
          );
        });
        logFirebaseEvent('NewClient01_set_form_field');
        safeSetState(() {
          _model.cpfTextController?.text =
              functions.removeNullString(getJsonField(
            (_model.apiResultEditClient?.jsonBody ?? ''),
            r'''$.data.professional_clients[0].cpf''',
          ).toString().toString())!;
          _model.cpfMask.updateMask(
            newValue: TextEditingValue(
              text: _model.cpfTextController!.text,
            ),
          );
        });
        logFirebaseEvent('NewClient01_set_form_field');
        safeSetState(() {
          _model.statusValue = (functions.convertJsonToString(getJsonField(
                    (_model.apiResultEditClient?.jsonBody ?? ''),
                    r'''$.data.professional_clients[0].status''',
                  )) ==
                  'inactive'
              ? false
              : true);
        });
      }
    });

    _model.nomeTextController ??= TextEditingController();
    _model.nomeFocusNode ??= FocusNode();

    _model.whatsappTextController ??= TextEditingController();
    _model.whatsappFocusNode ??= FocusNode();

    _model.cpfTextController ??= TextEditingController();
    _model.cpfFocusNode ??= FocusNode();

    _model.statusValue = true;
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
          child: Column(
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
                          minHeight: MediaQuery.sizeOf(context).height * 0.85,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Principais informações',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .displaySmall
                                                    .override(
                                                      font:
                                                          GoogleFonts.poppins(),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      fontSize: 30.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  font: GoogleFonts.poppins(),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 30.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      35.0, 0.0, 35.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Form(
                                              key: _model.formKey,
                                              autovalidateMode:
                                                  AutovalidateMode.disabled,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      'Nome',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .manrope(),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 8.0),
                                                    child: SizedBox(
                                                      width: 370.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .nomeTextController,
                                                        focusNode: _model
                                                            .nomeFocusNode,
                                                        autofocus: true,
                                                        autofillHints: const [
                                                          AutofillHints.email
                                                        ],
                                                        textCapitalization:
                                                            TextCapitalization
                                                                .words,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .manrope(),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
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
                                                                        12.0),
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
                                                                        12.0),
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
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        validator: _model
                                                            .nomeTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      'WhatsApp',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .manrope(),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 8.0),
                                                    child: SizedBox(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .whatsappTextController,
                                                        focusNode: _model
                                                            .whatsappFocusNode,
                                                        autofocus: true,
                                                        autofillHints: const [
                                                          AutofillHints.email
                                                        ],
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .manrope(),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
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
                                                                        12.0),
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
                                                                        12.0),
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
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        keyboardType:
                                                            TextInputType.phone,
                                                        validator: _model
                                                            .whatsappTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                        inputFormatters: [
                                                          _model.whatsappMask
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      'CPF',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .manrope(),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 8.0),
                                                    child: SizedBox(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .cpfTextController,
                                                        focusNode:
                                                            _model.cpfFocusNode,
                                                        autofocus: true,
                                                        autofillHints: const [
                                                          AutofillHints.email
                                                        ],
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .manrope(),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
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
                                                                        12.0),
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
                                                                        12.0),
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
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .manrope(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        keyboardType:
                                                            TextInputType.phone,
                                                        validator: _model
                                                            .cpfTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                        inputFormatters: [
                                                          _model.cpfMask
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 8.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Cliente ativo',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .manrope(),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            Switch.adaptive(
                                                              value: _model
                                                                  .statusValue!,
                                                              onChanged:
                                                                  (newValue) async {
                                                                safeSetState(() =>
                                                                    _model.statusValue =
                                                                        newValue);
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              activeTrackColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              inactiveTrackColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              inactiveThumbColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'NEW_CLIENT01_PAGE_CANCELAR_BTN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Button_navigate_back');
                                                              context.safePop();
                                                            },
                                                            text: 'Cancelar',
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.34,
                                                              height: 44.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .manrope(),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'NEW_CLIENT01_PAGE_AVANAR_BTN_ON_TAP');
                                                              if (widget
                                                                      .idClient !=
                                                                  null) {
                                                                logFirebaseEvent(
                                                                    'Button_backend_call');
                                                                _model.apiResultEditClients =
                                                                    await APIOficialGroup
                                                                        .editClientCall
                                                                        .call(
                                                                  authToken:
                                                                      currentAuthenticationToken,
                                                                  id: widget
                                                                      .idClient
                                                                      ?.toString(),
                                                                  name: _model
                                                                      .nomeTextController
                                                                      .text,
                                                                  cpf: _model
                                                                      .cpfTextController
                                                                      .text,
                                                                  cellphone: _model
                                                                      .whatsappTextController
                                                                      .text,
                                                                  status: _model
                                                                          .statusValue!
                                                                      ? 'active'
                                                                      : 'inactive',
                                                                );

                                                                if ((_model
                                                                        .apiResultEditClients
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  logFirebaseEvent(
                                                                      'Button_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    'NewClient02',
                                                                    queryParameters:
                                                                        {
                                                                      'idClient':
                                                                          serializeParam(
                                                                        widget
                                                                            .idClient,
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Button_show_snack_bar');
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Erro ao adicionar um novo cliente. Revise as informações e tente novamente.',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: const Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                }
                                                              } else {
                                                                logFirebaseEvent(
                                                                    'Button_backend_call');
                                                                _model.apiResultuit =
                                                                    await APIOficialGroup
                                                                        .createClientCall
                                                                        .call(
                                                                  authToken:
                                                                      currentAuthenticationToken,
                                                                  name: _model
                                                                      .nomeTextController
                                                                      .text,
                                                                  cpf: _model
                                                                      .cpfTextController
                                                                      .text,
                                                                  cellphone: _model
                                                                      .whatsappTextController
                                                                      .text,
                                                                  status: _model
                                                                          .statusValue!
                                                                      ? 'active'
                                                                      : 'inactive',
                                                                );

                                                                if ((_model
                                                                        .apiResultuit
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  if (widget
                                                                      .adicionadoPeloMais!) {
                                                                    if (widget
                                                                            .originConfig ==
                                                                        'schedule') {
                                                                      logFirebaseEvent(
                                                                          'Button_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        'Schedule03',
                                                                        queryParameters:
                                                                            {
                                                                          'dateSelected':
                                                                              serializeParam(
                                                                            widget.dateSelected,
                                                                            ParamType.DateTime,
                                                                          ),
                                                                          'hourSelected':
                                                                              serializeParam(
                                                                            widget.hourSelected,
                                                                            ParamType.String,
                                                                          ),
                                                                          'existAppointment':
                                                                              serializeParam(
                                                                            widget.existAppointment,
                                                                            ParamType.bool,
                                                                          ),
                                                                          'scheduleCabecalho':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              widget.scheduleJson,
                                                                              r'''$''',
                                                                            ),
                                                                            ParamType.JSON,
                                                                          ),
                                                                          'isAddNewClient':
                                                                              serializeParam(
                                                                            widget.isAddNewClient,
                                                                            ParamType.bool,
                                                                          ),
                                                                          'idClientSelected':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              (_model.apiResultuit?.jsonBody ?? ''),
                                                                              r'''$.data.id''',
                                                                            ),
                                                                            ParamType.int,
                                                                          ),
                                                                          'situacao':
                                                                              serializeParam(
                                                                            widget.situacao,
                                                                            ParamType.String,
                                                                          ),
                                                                          'idProfessionalClientSelected':
                                                                              serializeParam(
                                                                            getJsonField(
                                                                              (_model.apiResultuit?.jsonBody ?? ''),
                                                                              r'''$.data.id''',
                                                                            ),
                                                                            ParamType.int,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_navigate_back');
                                                                      context
                                                                          .safePop();
                                                                    }
                                                                  } else {
                                                                    logFirebaseEvent(
                                                                        'Button_navigate_to');

                                                                    context
                                                                        .pushNamed(
                                                                      'NewClient02',
                                                                      queryParameters:
                                                                          {
                                                                        'idClient':
                                                                            serializeParam(
                                                                          getJsonField(
                                                                            (_model.apiResultuit?.jsonBody ??
                                                                                ''),
                                                                            r'''$.data.id''',
                                                                          ),
                                                                          ParamType
                                                                              .int,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  }
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Button_show_snack_bar');
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Erro ao adicionar um novo cliente. Revise as informações e tente novamente.',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: const Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                }
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'Avançar',
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.34,
                                                              height: 44.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .manrope(),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
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
        ),
      ),
    );
  }
}
