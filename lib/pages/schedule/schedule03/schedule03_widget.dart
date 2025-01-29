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
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'schedule03_model.dart';
export 'schedule03_model.dart';

class Schedule03Widget extends StatefulWidget {
  const Schedule03Widget({
    super.key,
    this.dateSelected,
    this.hourSelected,
    bool? existAppointment,
    this.scheduleCabecalho,
    required this.isAddNewClient,
    this.idClientSelected,
    required this.situacao,
    this.idProfessionalClientSelected,
    this.idAppointmentSelected,
    this.duration,
  }) : this.existAppointment = existAppointment ?? false;

  final DateTime? dateSelected;
  final String? hourSelected;
  final bool existAppointment;
  final dynamic scheduleCabecalho;
  final bool? isAddNewClient;
  final int? idClientSelected;
  final String? situacao;
  final int? idProfessionalClientSelected;
  final int? idAppointmentSelected;
  final int? duration;

  @override
  State<Schedule03Widget> createState() => _Schedule03WidgetState();
}

class _Schedule03WidgetState extends State<Schedule03Widget> {
  late Schedule03Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Schedule03Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Schedule03'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SCHEDULE03_PAGE_Schedule03_ON_INIT_STATE');
      logFirebaseEvent('Schedule03_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
      if (getJsonField(
            widget!.scheduleCabecalho,
            r'''$.professional_client[*].client_id''',
          ) !=
          null) {
        logFirebaseEvent('Schedule03_backend_call');
        _model.getAppointmet1 =
            await APIOficialGroup.getAppointmentsByIDCall.call(
          authToken: currentAuthenticationToken,
          id: widget!.idAppointmentSelected?.toString(),
        );

        logFirebaseEvent('Schedule03_set_form_field');
        safeSetState(() {
          _model.statusValue = () {
            if (!widget!.isAddNewClient!) {
              return (functions
                      .convertStrintToInt(getJsonField(
                        (_model.getAppointmet1?.jsonBody ?? ''),
                        r'''$.recurrent''',
                      ).toString().toString())
                      .toString() ==
                  '1');
            } else if (widget!.isAddNewClient!) {
              return false;
            } else {
              return false;
            }
          }();
        });
        logFirebaseEvent('Schedule03_wait__delay');
        await Future.delayed(const Duration(milliseconds: 300));
        logFirebaseEvent('Schedule03_set_form_field');
        safeSetState(() {
          _model.prazoRecorrenteValueController?.value = () {
            if ((_model.statusValue == true) &&
                (functions.convertJsonToString(getJsonField(
                      (_model.getAppointmet1?.jsonBody ?? ''),
                      r'''$.frequency''',
                    )) ==
                    'WEEKLY') &&
                (functions.convertStrintToInt(getJsonField(
                      (_model.getAppointmet1?.jsonBody ?? ''),
                      r'''$.interval_num''',
                    ).toString().toString()) ==
                    1)) {
              return 'weekly';
            } else if ((_model.statusValue == true) &&
                (functions.convertJsonToString(getJsonField(
                      (_model.getAppointmet1?.jsonBody ?? ''),
                      r'''$.frequency''',
                    )) ==
                    'WEEKLY') &&
                (functions.convertStrintToInt(getJsonField(
                      (_model.getAppointmet1?.jsonBody ?? ''),
                      r'''$.interval_num''',
                    ).toString().toString()) ==
                    2)) {
              return 'fortnightly';
            } else if ((_model.statusValue == true) &&
                (functions.convertJsonToString(getJsonField(
                      (_model.getAppointmet1?.jsonBody ?? ''),
                      r'''$.frequency''',
                    )) ==
                    'MONTHLY')) {
              return 'monthly';
            } else {
              return '';
            }
          }();
        });
        logFirebaseEvent('Schedule03_update_page_state');
        _model.idsClientsSchedule = getJsonField(
          widget!.scheduleCabecalho,
          r'''$.professional_client[*].pivot.professional_client_id''',
          true,
        )!
            .toList()
            .cast<int>();
        safeSetState(() {});
        logFirebaseEvent('Schedule03_backend_call');
        _model.apiResultox6 = await APIOficialGroup.listAllClientsCall.call(
          authToken: currentAuthenticationToken,
        );

        if ((widget!.isAddNewClient == true) && widget!.existAppointment) {
          logFirebaseEvent('Schedule03_custom_action');
          _model.resultFilterAction = await actions.filterJsonNotINAction(
            getJsonField(
              (_model.apiResultox6?.jsonBody ?? ''),
              r'''$''',
            ),
            _model.idsClientsSchedule.toList(),
          );
          logFirebaseEvent('Schedule03_update_page_state');
          _model.listClients = getJsonField(
            _model.resultFilterAction,
            r'''$''',
          );
          safeSetState(() {});
        } else {
          logFirebaseEvent('Schedule03_update_page_state');
          _model.listClients = <String, dynamic>{
            'data': getJsonField(
              (_model.apiResultox6?.jsonBody ?? ''),
              r'''$.data''',
            ),
          };
          safeSetState(() {});
        }
      } else {
        logFirebaseEvent('Schedule03_backend_call');
        _model.apiResultox6b = await APIOficialGroup.listAllClientsCall.call(
          authToken: currentAuthenticationToken,
        );

        if ((_model.apiResultox6b?.succeeded ?? true)) {
          logFirebaseEvent('Schedule03_update_page_state');
          _model.listClients = <String, dynamic>{
            'data': getJsonField(
              (_model.apiResultox6b?.jsonBody ?? ''),
              r'''$.data''',
            ),
          };
          safeSetState(() {});
        }
      }
    });

    _model.dataTextController ??= TextEditingController();
    _model.dataFocusNode ??= FocusNode();

    _model.horaTextController ??=
        TextEditingController(text: widget!.hourSelected);
    _model.horaFocusNode ??= FocusNode();

    _model.durationTextController ??=
        TextEditingController(text: widget!.duration?.toString());
    _model.durationFocusNode ??= FocusNode();

    _model.descricaoTextController ??= TextEditingController(
        text: !widget!.isAddNewClient!
            ? functions.removeNullString(getJsonField(
                widget!.scheduleCabecalho,
                r'''$.description''',
              ).toString().toString())
            : '');
    _model.descricaoFocusNode ??= FocusNode();

    _model.statusValue = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.dataTextController?.text = dateTimeFormat(
            "d/M/y",
            widget!.dateSelected,
            locale: FFLocalizations.of(context).languageCode,
          );
        }));
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
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.85,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      35.0,
                                                                      0.0,
                                                                      35.0,
                                                                      0.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'Agendar horário',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        fontSize:
                                                                            30.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        30.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      35.0,
                                                                      0.0,
                                                                      35.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                                child: Column(
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
                                                                          AutovalidateMode
                                                                              .disabled,
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if (!widget!
                                                                              .existAppointment)
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                child: Text(
                                                                                  'Data e hora',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceAround,
                                                                            children: [
                                                                              if (!widget!.existAppointment)
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 8.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                    child: TextFormField(
                                                                                      controller: _model.dataTextController,
                                                                                      focusNode: _model.dataFocusNode,
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Manrope',
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
                                                                                            fontFamily: 'Manrope',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      keyboardType: TextInputType.number,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.dataTextControllerValidator.asValidator(context),
                                                                                      inputFormatters: [
                                                                                        _model.dataMask
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (!widget!.existAppointment)
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                      child: TextFormField(
                                                                                        controller: _model.horaTextController,
                                                                                        focusNode: _model.horaFocusNode,
                                                                                        autofocus: false,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          isDense: true,
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Manrope',
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
                                                                                              fontFamily: 'Manrope',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        keyboardType: TextInputType.number,
                                                                                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                        validator: _model.horaTextControllerValidator.asValidator(context),
                                                                                        inputFormatters: [
                                                                                          _model.horaMask
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                          if (!widget!
                                                                              .existAppointment)
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Text(
                                                                                'Tipo de compromisso',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              if (!widget!.existAppointment)
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.tipocompromissoValueController ??= FormFieldController<String>(
                                                                                        _model.tipocompromissoValue ??= () {
                                                                                          if (!widget!.isAddNewClient!) {
                                                                                            return getJsonField(
                                                                                              widget!.scheduleCabecalho,
                                                                                              r'''$.type''',
                                                                                            ).toString();
                                                                                          } else if ((widget!.isAddNewClient == true) && widget!.existAppointment) {
                                                                                            return getJsonField(
                                                                                              widget!.scheduleCabecalho,
                                                                                              r'''$.type''',
                                                                                            ).toString();
                                                                                          } else {
                                                                                            return 'professional';
                                                                                          }
                                                                                        }(),
                                                                                      ),
                                                                                      options: List<String>.from([
                                                                                        'professional',
                                                                                        'personal'
                                                                                      ]),
                                                                                      optionLabels: [
                                                                                        'Profissional',
                                                                                        'Pessoal'
                                                                                      ],
                                                                                      onChanged: (val) => safeSetState(() => _model.tipocompromissoValue = val),
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 40.0,
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'Selecione uma opção',
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
                                                                                ),
                                                                            ],
                                                                          ),
                                                                          if (_model.tipocompromissoValue ==
                                                                              'personal')
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Text(
                                                                                'Duração (em minutos)',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          if (_model.tipocompromissoValue ==
                                                                              'personal')
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
                                                                                          fontFamily: 'Manrope',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Manrope',
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
                                                                                        fontFamily: 'Manrope',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  keyboardType: TextInputType.number,
                                                                                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  validator: _model.durationTextControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (_model.tipocompromissoValue !=
                                                                              'personal')
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Text(
                                                                                'Cliente',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          if (_model.tipocompromissoValue !=
                                                                              'personal')
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    if (getJsonField(
                                                                                          _model.listClients,
                                                                                          r'''$.data[*].id''',
                                                                                        ) !=
                                                                                        null)
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                        child: FlutterFlowDropDown<int>(
                                                                                          controller: _model.clientesValueController ??= FormFieldController<int>(
                                                                                            _model.clientesValue ??= () {
                                                                                              if (widget!.idClientSelected != null) {
                                                                                                return widget!.idClientSelected;
                                                                                              } else if (!widget!.isAddNewClient!) {
                                                                                                return getJsonField(
                                                                                                  widget!.scheduleCabecalho,
                                                                                                  r'''$.professional_client[*].id''',
                                                                                                );
                                                                                              } else {
                                                                                                return null;
                                                                                              }
                                                                                            }(),
                                                                                          ),
                                                                                          options: List<int>.from(getJsonField(
                                                                                            _model.listClients,
                                                                                            r'''$.data[*].id''',
                                                                                            true,
                                                                                          )!),
                                                                                          optionLabels: (getJsonField(
                                                                                            _model.listClients,
                                                                                            r'''$.data[*].name''',
                                                                                            true,
                                                                                          ) as List)
                                                                                              .map<String>((s) => s.toString())
                                                                                              .toList()!,
                                                                                          onChanged: (val) async {
                                                                                            safeSetState(() => _model.clientesValue = val);
                                                                                            logFirebaseEvent('SCHEDULE03_clientes_ON_FORM_WIDGET_SELEC');
                                                                                            logFirebaseEvent('clientes_update_page_state');
                                                                                            _model.idsClientsSchedule = [];
                                                                                            safeSetState(() {});
                                                                                            logFirebaseEvent('clientes_update_page_state');
                                                                                            _model.addToIdsClientsSchedule(_model.clientesValue!);
                                                                                            safeSetState(() {});
                                                                                          },
                                                                                          width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                          height: 40.0,
                                                                                          searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintText: 'Selecione uma opção',
                                                                                          searchHintText: 'Buscar cliente',
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
                                                                                          disabled: (getJsonField(
                                                                                                    widget!.scheduleCabecalho,
                                                                                                    r'''$.id''',
                                                                                                  ) !=
                                                                                                  null) &&
                                                                                              !widget!.isAddNewClient!,
                                                                                          isOverButton: false,
                                                                                          isSearchable: true,
                                                                                          isMultiSelect: false,
                                                                                        ),
                                                                                      ),
                                                                                    if (getJsonField(
                                                                                          _model.listClients,
                                                                                          r'''$.data[*].id''',
                                                                                        ) !=
                                                                                        null)
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('SCHEDULE03_PAGE_Icon_sgxmdocj_ON_TAP');
                                                                                          logFirebaseEvent('Icon_navigate_to');

                                                                                          context.pushNamed(
                                                                                            'NewClient01',
                                                                                            queryParameters: {
                                                                                              'adicionadoPeloMais': serializeParam(
                                                                                                true,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'originConfig': serializeParam(
                                                                                                'schedule',
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'dateSelected': serializeParam(
                                                                                                widget!.dateSelected,
                                                                                                ParamType.DateTime,
                                                                                              ),
                                                                                              'hourSelected': serializeParam(
                                                                                                widget!.hourSelected,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'existAppointment': serializeParam(
                                                                                                widget!.existAppointment,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'scheduleJson': serializeParam(
                                                                                                getJsonField(
                                                                                                  widget!.scheduleCabecalho,
                                                                                                  r'''$''',
                                                                                                ),
                                                                                                ParamType.JSON,
                                                                                              ),
                                                                                              'isAddNewClient': serializeParam(
                                                                                                widget!.isAddNewClient,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'idClientSelected': serializeParam(
                                                                                                widget!.idClientSelected,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'situacao': serializeParam(
                                                                                                widget!.situacao,
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
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    if (getJsonField(
                                                                                          _model.listClients,
                                                                                          r'''$.data[*].id''',
                                                                                        ) ==
                                                                                        null)
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                        child: FlutterFlowDropDown<String>(
                                                                                          controller: _model.clientesEmptyValueController ??= FormFieldController<String>(null),
                                                                                          options: <String>[],
                                                                                          onChanged: (val) => safeSetState(() => _model.clientesEmptyValue = val),
                                                                                          width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                          height: 40.0,
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintText: 'Selecione uma opção',
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
                                                                                          _model.listClients,
                                                                                          r'''$.data[*].id''',
                                                                                        ) ==
                                                                                        null)
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('SCHEDULE03_PAGE_Icon_9xhe84wu_ON_TAP');
                                                                                          logFirebaseEvent('Icon_navigate_to');

                                                                                          context.pushNamed(
                                                                                            'NewClient01',
                                                                                            queryParameters: {
                                                                                              'adicionadoPeloMais': serializeParam(
                                                                                                true,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'originConfig': serializeParam(
                                                                                                'schedule',
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'dateSelected': serializeParam(
                                                                                                widget!.dateSelected,
                                                                                                ParamType.DateTime,
                                                                                              ),
                                                                                              'hourSelected': serializeParam(
                                                                                                widget!.hourSelected,
                                                                                                ParamType.String,
                                                                                              ),
                                                                                              'existAppointment': serializeParam(
                                                                                                widget!.existAppointment,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'scheduleJson': serializeParam(
                                                                                                getJsonField(
                                                                                                  widget!.scheduleCabecalho,
                                                                                                  r'''$''',
                                                                                                ),
                                                                                                ParamType.JSON,
                                                                                              ),
                                                                                              'isAddNewClient': serializeParam(
                                                                                                widget!.isAddNewClient,
                                                                                                ParamType.bool,
                                                                                              ),
                                                                                              'idClientSelected': serializeParam(
                                                                                                widget!.idClientSelected,
                                                                                                ParamType.int,
                                                                                              ),
                                                                                              'situacao': serializeParam(
                                                                                                widget!.situacao,
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
                                                                            ),
                                                                          if ((widget!.existAppointment == false) &&
                                                                              (_model.tipocompromissoValue != 'personal'))
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Text(
                                                                                'Serviços que ofereço',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          if ((widget!.existAppointment == false) &&
                                                                              (_model.tipocompromissoValue != 'personal'))
                                                                            FutureBuilder<ApiCallResponse>(
                                                                              future: FFAppState().serviceCacheGlobal(
                                                                                requestFn: () => APIOficialGroup.getServicesCall.call(
                                                                                  authToken: currentAuthenticationToken,
                                                                                ),
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

                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        if (getJsonField(
                                                                                              columnGetServicesResponse.jsonBody,
                                                                                              r'''$.data[*].id''',
                                                                                            ) !=
                                                                                            null)
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                            child: FlutterFlowDropDown<int>(
                                                                                              controller: _model.servicosValueController ??= FormFieldController<int>(
                                                                                                _model.servicosValue ??= () {
                                                                                                  if (!widget!.isAddNewClient!) {
                                                                                                    return getJsonField(
                                                                                                      widget!.scheduleCabecalho,
                                                                                                      r'''$.service_id''',
                                                                                                    );
                                                                                                  } else if ((widget!.isAddNewClient == true) && widget!.existAppointment) {
                                                                                                    return getJsonField(
                                                                                                      widget!.scheduleCabecalho,
                                                                                                      r'''$.service_id''',
                                                                                                    );
                                                                                                  } else {
                                                                                                    return null;
                                                                                                  }
                                                                                                }(),
                                                                                              ),
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
                                                                                                    fontFamily: 'Manrope',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'Selecione uma opção',
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
                                                                                              logFirebaseEvent('SCHEDULE03_PAGE_Icon_lo5im8j9_ON_TAP');
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
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        if (getJsonField(
                                                                                              columnGetServicesResponse.jsonBody,
                                                                                              r'''$.data[*].id''',
                                                                                            ) ==
                                                                                            null)
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                            child: FlutterFlowDropDown<String>(
                                                                                              controller: _model.servicosEmptyValueController ??= FormFieldController<String>(null),
                                                                                              options: <String>[],
                                                                                              onChanged: (val) => safeSetState(() => _model.servicosEmptyValue = val),
                                                                                              width: MediaQuery.sizeOf(context).width * 0.6,
                                                                                              height: 40.0,
                                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Manrope',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'Selecione uma opção',
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
                                                                                            ) ==
                                                                                            null)
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('SCHEDULE03_PAGE_Icon_a00r7bow_ON_TAP');
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
                                                                          if (_model.tipocompromissoValue !=
                                                                              'personal')
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                child: Text(
                                                                                  'Situação',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          if (_model.tipocompromissoValue !=
                                                                              'personal')
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: FlutterFlowDropDown<String>(
                                                                                    controller: _model.situacaoDropDownValueController ??= FormFieldController<String>(
                                                                                      _model.situacaoDropDownValue ??= widget!.isAddNewClient == true ? 'confirmed' : widget!.situacao,
                                                                                    ),
                                                                                    options: List<String>.from([
                                                                                      'pending',
                                                                                      'confirmed',
                                                                                      'canceled',
                                                                                      'absent'
                                                                                    ]),
                                                                                    optionLabels: [
                                                                                      'Pendente',
                                                                                      'Confirmado',
                                                                                      'Cancelado',
                                                                                      'Ausente'
                                                                                    ],
                                                                                    onChanged: (val) => safeSetState(() => _model.situacaoDropDownValue = val),
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    height: 40.0,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintText: 'Situação',
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
                                                                              ],
                                                                            ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                              child: Text(
                                                                                'Descrição',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceAround,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.descricaoTextController,
                                                                                      focusNode: _model.descricaoFocusNode,
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
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
                                                                                            fontFamily: 'Manrope',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      maxLines: 4,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.descricaoTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                8.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  'Agendamento recorrente',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                                Switch.adaptive(
                                                                                  value: _model.statusValue!,
                                                                                  onChanged: (newValue) async {
                                                                                    safeSetState(() => _model.statusValue = newValue!);

                                                                                    if (!newValue!) {
                                                                                      logFirebaseEvent('SCHEDULE03_PAGE_status_ON_TOGGLE_OFF');
                                                                                      logFirebaseEvent('status_reset_form_fields');
                                                                                      safeSetState(() {
                                                                                        _model.prazoRecorrenteValueController?.reset();
                                                                                      });
                                                                                    }
                                                                                  },
                                                                                  activeColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  activeTrackColor: FlutterFlowTheme.of(context).primary,
                                                                                  inactiveTrackColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                8.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                if (_model.statusValue ?? true)
                                                                                  Flexible(
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.prazoRecorrenteValueController ??= FormFieldController<String>(
                                                                                        _model.prazoRecorrenteValue ??= '',
                                                                                      ),
                                                                                      options: List<String>.from([
                                                                                        'weekly',
                                                                                        'fortnightly',
                                                                                        'monthly'
                                                                                      ]),
                                                                                      optionLabels: [
                                                                                        'Semanal',
                                                                                        'Quinzenal',
                                                                                        'Mensal'
                                                                                      ],
                                                                                      onChanged: (val) => safeSetState(() => _model.prazoRecorrenteValue = val),
                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                      height: 40.0,
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'Selecione uma opção',
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
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                16.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      logFirebaseEvent('SCHEDULE03_SALVAR_AGENDAMENTO_BTN_ON_TAP');
                                                                                      logFirebaseEvent('Button_validate_form');
                                                                                      if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                        return;
                                                                                      }
                                                                                      if ((_model.statusValue == true) && (_model.prazoRecorrenteValue == '')) {
                                                                                        logFirebaseEvent('Button_show_snack_bar');
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Preencha o campo repetição.',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                          ),
                                                                                        );
                                                                                      } else {
                                                                                        if ((_model.tipocompromissoValue == 'personal') && (_model.descricaoTextController.text == null || _model.descricaoTextController.text == '') && (_model.durationTextController.text == null || _model.durationTextController.text == '')) {
                                                                                          logFirebaseEvent('Button_show_snack_bar');
                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                            SnackBar(
                                                                                              content: Text(
                                                                                                'Campo descrição e duração obrigatórios',
                                                                                                style: TextStyle(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              duration: Duration(milliseconds: 4000),
                                                                                              backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                            ),
                                                                                          );
                                                                                        } else {
                                                                                          if ((_model.tipocompromissoValue == 'professional') && (_model.clientesValue == null)) {
                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  'Campo cliente obrigatório.',
                                                                                                  style: TextStyle(
                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  ),
                                                                                                ),
                                                                                                duration: Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                              ),
                                                                                            );
                                                                                          } else {
                                                                                            if ((_model.tipocompromissoValue == 'professional') && (_model.servicosValue == null)) {
                                                                                              logFirebaseEvent('Button_show_snack_bar');
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    'Campo serviço obrigatório.',
                                                                                                    style: TextStyle(
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                    ),
                                                                                                  ),
                                                                                                  duration: Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                ),
                                                                                              );
                                                                                            } else {
                                                                                              if (getJsonField(
                                                                                                    widget!.scheduleCabecalho,
                                                                                                    r'''$.id''',
                                                                                                  ) !=
                                                                                                  null) {
                                                                                                if ((widget!.isAddNewClient == true) && widget!.existAppointment) {
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.apiResulttd2 = await APIOficialGroup.createAppointmentCall.call(
                                                                                                    authToken: currentAuthenticationToken,
                                                                                                    type: getJsonField(
                                                                                                      widget!.scheduleCabecalho,
                                                                                                      r'''$.type''',
                                                                                                    ).toString(),
                                                                                                    description: _model.descricaoTextController.text,
                                                                                                    recurrent: _model.statusValue,
                                                                                                    scheduledAt: functions.dateHourStringToDateTimeIso8601(_model.dataTextController.text, _model.horaTextController.text),
                                                                                                    serviceId: getJsonField(
                                                                                                      widget!.scheduleCabecalho,
                                                                                                      r'''$.service.id''',
                                                                                                    ),
                                                                                                    professionalClientIdList: _model.idsClientsSchedule,
                                                                                                    recurrentInterval: _model.prazoRecorrenteValue == 'null' ? null : _model.prazoRecorrenteValue,
                                                                                                    confirmation: _model.tipocompromissoValue == 'personal' ? 'confirmed' : _model.situacaoDropDownValue,
                                                                                                    duration: _model.tipocompromissoValue == 'personal' ? int.tryParse(_model.durationTextController.text) : null,
                                                                                                  );

                                                                                                  if ((_model.apiResulttd2?.succeeded ?? true)) {
                                                                                                    logFirebaseEvent('Button_navigate_to');

                                                                                                    context.pushNamed(
                                                                                                      'Schedule01',
                                                                                                      queryParameters: {
                                                                                                        'dateParametro': serializeParam(
                                                                                                          functions.convertDateStringToDatetime(functions.dateStringToDate(_model.dataTextController.text)),
                                                                                                          ParamType.DateTime,
                                                                                                        ),
                                                                                                      }.withoutNulls,
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
                                                                                                    logFirebaseEvent('Button_show_snack_bar');
                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                      SnackBar(
                                                                                                        content: Text(
                                                                                                          getJsonField(
                                                                                                            (_model.apiResulttd2?.jsonBody ?? ''),
                                                                                                            r'''$.message''',
                                                                                                          ).toString(),
                                                                                                          style: TextStyle(
                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                          ),
                                                                                                        ),
                                                                                                        duration: Duration(milliseconds: 4000),
                                                                                                        backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                } else {
                                                                                                  logFirebaseEvent('Button_backend_call');
                                                                                                  _model.apiResultvdr = await APIOficialGroup.updateAppointmentCall.call(
                                                                                                    authToken: currentAuthenticationToken,
                                                                                                    idAppointment: widget!.idAppointmentSelected?.toString(),
                                                                                                    type: () {
                                                                                                      if (!widget!.isAddNewClient!) {
                                                                                                        return getJsonField(
                                                                                                          widget!.scheduleCabecalho,
                                                                                                          r'''$.type''',
                                                                                                        ).toString();
                                                                                                      } else if ((widget!.isAddNewClient == true) && widget!.existAppointment) {
                                                                                                        return getJsonField(
                                                                                                          widget!.scheduleCabecalho,
                                                                                                          r'''$.type''',
                                                                                                        ).toString();
                                                                                                      } else {
                                                                                                        return 'professional';
                                                                                                      }
                                                                                                    }(),
                                                                                                    description: _model.descricaoTextController.text,
                                                                                                    recurrent: _model.statusValue,
                                                                                                    serviceId: getJsonField(
                                                                                                      widget!.scheduleCabecalho,
                                                                                                      r'''$.service_id''',
                                                                                                    ),
                                                                                                    professionalClientIdList: functions.addIntegerToListInteger(_model.listProfessionalClients.toList(), widget!.idProfessionalClientSelected),
                                                                                                    scheduledAt: functions.dateHourStringToDateTimeIso8601(_model.dataTextController.text, _model.horaTextController.text),
                                                                                                    recurrentInterval: _model.prazoRecorrenteValue == 'null' ? null : _model.prazoRecorrenteValue,
                                                                                                    confirmation: _model.tipocompromissoValue == 'personal' ? 'confirmed' : _model.situacaoDropDownValue,
                                                                                                    duration: _model.tipocompromissoValue == 'personal' ? int.tryParse(_model.durationTextController.text) : null,
                                                                                                  );

                                                                                                  if ((_model.apiResultvdr?.succeeded ?? true)) {
                                                                                                    logFirebaseEvent('Button_navigate_to');

                                                                                                    context.pushNamed(
                                                                                                      'Schedule01',
                                                                                                      queryParameters: {
                                                                                                        'dateParametro': serializeParam(
                                                                                                          functions.convertDateStringToDatetime(functions.dateStringToDate(_model.dataTextController.text)),
                                                                                                          ParamType.DateTime,
                                                                                                        ),
                                                                                                      }.withoutNulls,
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
                                                                                                  } else {
                                                                                                    logFirebaseEvent('Button_show_snack_bar');
                                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                                      SnackBar(
                                                                                                        content: Text(
                                                                                                          getJsonField(
                                                                                                            (_model.apiResultvdr?.jsonBody ?? ''),
                                                                                                            r'''$.message''',
                                                                                                          ).toString(),
                                                                                                          style: TextStyle(
                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                          ),
                                                                                                        ),
                                                                                                        duration: Duration(milliseconds: 4000),
                                                                                                        backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                      ),
                                                                                                    );
                                                                                                  }
                                                                                                }
                                                                                              } else {
                                                                                                logFirebaseEvent('Button_update_page_state');
                                                                                                _model.idsClientsSchedule = [];
                                                                                                safeSetState(() {});
                                                                                                if (_model.tipocompromissoValue == 'professional') {
                                                                                                  logFirebaseEvent('Button_update_page_state');
                                                                                                  _model.addToIdsClientsSchedule(_model.clientesValue!);
                                                                                                  safeSetState(() {});
                                                                                                }
                                                                                                logFirebaseEvent('Button_backend_call');
                                                                                                _model.apiResulttd1 = await APIOficialGroup.createAppointmentCall.call(
                                                                                                  authToken: currentAuthenticationToken,
                                                                                                  type: _model.tipocompromissoValue,
                                                                                                  description: _model.descricaoTextController.text,
                                                                                                  recurrent: _model.statusValue,
                                                                                                  scheduledAt: functions.dateHourStringToDateTimeIso8601(_model.dataTextController.text, _model.horaTextController.text),
                                                                                                  serviceId: _model.servicosValue,
                                                                                                  professionalClientIdList: _model.idsClientsSchedule,
                                                                                                  recurrentInterval: _model.prazoRecorrenteValue == 'null' ? null : _model.prazoRecorrenteValue,
                                                                                                  confirmation: _model.tipocompromissoValue == 'personal' ? 'confirmed' : _model.situacaoDropDownValue,
                                                                                                  duration: _model.tipocompromissoValue == 'personal' ? int.tryParse(_model.durationTextController.text) : null,
                                                                                                );

                                                                                                if ((_model.apiResulttd1?.succeeded ?? true)) {
                                                                                                  logFirebaseEvent('Button_navigate_to');

                                                                                                  context.pushNamed(
                                                                                                    'Schedule01',
                                                                                                    queryParameters: {
                                                                                                      'dateParametro': serializeParam(
                                                                                                        functions.convertDateStringToDatetime(functions.dateStringToDate(_model.dataTextController.text)),
                                                                                                        ParamType.DateTime,
                                                                                                      ),
                                                                                                    }.withoutNulls,
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
                                                                                                  logFirebaseEvent('Button_show_snack_bar');
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        getJsonField(
                                                                                                          (_model.apiResulttd1?.jsonBody ?? ''),
                                                                                                          r'''$.message''',
                                                                                                        ).toString(),
                                                                                                        style: TextStyle(
                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                        ),
                                                                                                      ),
                                                                                                      duration: Duration(milliseconds: 4000),
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      safeSetState(() {});
                                                                                    },
                                                                                    text: 'Salvar agendamento',
                                                                                    options: FFButtonOptions(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.7,
                                                                                      height: 44.0,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Manrope',
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
        ),
      ),
    );
  }
}
