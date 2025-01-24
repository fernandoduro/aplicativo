import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'schedule01_model.dart';
export 'schedule01_model.dart';

class Schedule01Widget extends StatefulWidget {
  const Schedule01Widget({super.key});

  @override
  State<Schedule01Widget> createState() => _Schedule01WidgetState();
}

class _Schedule01WidgetState extends State<Schedule01Widget> {
  late Schedule01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Schedule01Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Schedule01'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SCHEDULE01_PAGE_Schedule01_ON_INIT_STATE');
      logFirebaseEvent('Schedule01_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
      logFirebaseEvent('Schedule01_update_page_state');
      _model.dateSelected = _model.calendarSelectedDay?.start;
      safeSetState(() {});
      logFirebaseEvent('Schedule01_backend_call');
      _model.apiResultrko = await APIOficialGroup.listScheduleCall.call(
        authToken: currentAuthenticationToken,
        dataFiltro: dateTimeFormat(
          "y-MM-d",
          _model.dateSelected,
          locale: FFLocalizations.of(context).languageCode,
        ),
      );

      logFirebaseEvent('Schedule01_update_page_state');
      _model.listSchedule = getJsonField(
        (_model.apiResultrko?.jsonBody ?? ''),
        r'''$''',
      );
      safeSetState(() {});
      if (getJsonField(
            (_model.apiResultrko?.jsonBody ?? ''),
            r'''$[0].time''',
          ) !=
          null) {
        logFirebaseEvent('Schedule01_update_page_state');
        _model.existHours = true;
        safeSetState(() {});
      } else {
        logFirebaseEvent('Schedule01_update_page_state');
        _model.existHours = false;
        safeSetState(() {});
      }

      logFirebaseEvent('Schedule01_update_page_state');
      _model.isLoading = true;
      safeSetState(() {});
    });

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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      children: [
                                        if (_model.isCalendarExpanded)
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 50.0, 0.0),
                                              child: FlutterFlowCalendar(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                weekFormat: false,
                                                weekStartsMonday: false,
                                                initialDate: _model
                                                    .calendarReduceSelectedDay
                                                    ?.start,
                                                rowHeight: 36.0,
                                                onChange: (DateTimeRange?
                                                    newSelectedDate) async {
                                                  if (_model
                                                          .calendarSelectedDay ==
                                                      newSelectedDate) {
                                                    return;
                                                  }
                                                  _model.calendarSelectedDay =
                                                      newSelectedDate;
                                                  logFirebaseEvent(
                                                      'SCHEDULE01_Calendar_jn9quwe6_ON_DATE_SEL');
                                                  logFirebaseEvent(
                                                      'Calendar_update_page_state');
                                                  _model.dateSelected = _model
                                                      .calendarSelectedDay
                                                      ?.start;
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'Calendar_backend_call');
                                                  _model.apiResultrkoNew =
                                                      await APIOficialGroup
                                                          .listScheduleCall
                                                          .call(
                                                    authToken:
                                                        currentAuthenticationToken,
                                                    dataFiltro: dateTimeFormat(
                                                      "y-MM-d",
                                                      _model.dateSelected,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                  );

                                                  logFirebaseEvent(
                                                      'Calendar_update_page_state');
                                                  _model.listSchedule =
                                                      getJsonField(
                                                    (_model.apiResultrkoNew
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$''',
                                                  );
                                                  safeSetState(() {});
                                                  if (getJsonField(
                                                        (_model.apiResultrkoNew
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$[0].time''',
                                                      ) !=
                                                      null) {
                                                    logFirebaseEvent(
                                                        'Calendar_update_page_state');
                                                    _model.existHours = true;
                                                    safeSetState(() {});
                                                  } else {
                                                    logFirebaseEvent(
                                                        'Calendar_update_page_state');
                                                    _model.existHours = false;
                                                    safeSetState(() {});
                                                  }

                                                  safeSetState(() {});
                                                },
                                                titleStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                                dayOfWeekStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.0,
                                                        ),
                                                dateStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                selectedDateStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                inactiveDateStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                            ),
                                          ),
                                        if (!_model.isCalendarExpanded)
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 50.0, 0.0),
                                              child: FlutterFlowCalendar(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                weekFormat: true,
                                                weekStartsMonday: false,
                                                initialDate: _model
                                                    .calendarSelectedDay?.start,
                                                rowHeight: 36.0,
                                                onChange: (DateTimeRange?
                                                    newSelectedDate) async {
                                                  if (_model
                                                          .calendarReduceSelectedDay ==
                                                      newSelectedDate) {
                                                    return;
                                                  }
                                                  _model.calendarReduceSelectedDay =
                                                      newSelectedDate;
                                                  logFirebaseEvent(
                                                      'SCHEDULE01_calendarReduce_ON_DATE_SELECT');
                                                  logFirebaseEvent(
                                                      'calendarReduce_update_page_state');
                                                  _model.dateSelected = _model
                                                      .calendarReduceSelectedDay
                                                      ?.start;
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'calendarReduce_backend_call');
                                                  _model.apiResultrkored =
                                                      await APIOficialGroup
                                                          .listScheduleCall
                                                          .call(
                                                    authToken:
                                                        currentAuthenticationToken,
                                                    dataFiltro: dateTimeFormat(
                                                      "y-MM-d",
                                                      _model.dateSelected,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                  );

                                                  logFirebaseEvent(
                                                      'calendarReduce_update_page_state');
                                                  _model.listSchedule =
                                                      getJsonField(
                                                    (_model.apiResultrkored
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$''',
                                                  );
                                                  safeSetState(() {});
                                                  if (getJsonField(
                                                        (_model.apiResultrkored
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$[0].time''',
                                                      ) !=
                                                      null) {
                                                    logFirebaseEvent(
                                                        'calendarReduce_update_page_state');
                                                    _model.existHours = true;
                                                    safeSetState(() {});
                                                  } else {
                                                    logFirebaseEvent(
                                                        'calendarReduce_update_page_state');
                                                    _model.existHours = false;
                                                    safeSetState(() {});
                                                  }

                                                  safeSetState(() {});
                                                },
                                                titleStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                                dayOfWeekStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                dateStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                selectedDateStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                inactiveDateStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                            ),
                                          ),
                                        if (_model.isCalendarExpanded)
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 74.0, 10.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 8.0,
                                                buttonSize: 40.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                icon: Icon(
                                                  Icons.expand_less_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'SCHEDULE01_PAGE_expand_ON_TAP');
                                                  logFirebaseEvent(
                                                      'expand_update_page_state');
                                                  _model.isCalendarExpanded =
                                                      false;
                                                  safeSetState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        if (!_model.isCalendarExpanded)
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 74.0, 10.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 8.0,
                                                buttonSize: 40.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                icon: Icon(
                                                  Icons.expand_more,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'SCHEDULE01_PAGE_reduce_ON_TAP');
                                                  logFirebaseEvent(
                                                      'reduce_update_page_state');
                                                  _model.isCalendarExpanded =
                                                      true;
                                                  safeSetState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    if ((_model.existHours == false) &&
                                        _model.isLoading)
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                0.0),
                                                    child: Text(
                                                      'Você não possui horários cadastrados para o dia selecionado.',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Manrope',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'SCHEDULE01_CONFIGURAR_HORRIOS_BTN_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Button_navigate_to');

                                                      context.pushNamed(
                                                        'Services05',
                                                        queryParameters: {
                                                          'originConfig':
                                                              serializeParam(
                                                            '',
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    text: 'Configurar horários',
                                                    options: FFButtonOptions(
                                                      height: 40.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (_model.existHours)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 1.0, 0.0, 36.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (_model.existHours)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      1.0,
                                                                      0.0,
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
                                                                      dateTimeFormat(
                                                                    "EEEE, d ",
                                                                    _model
                                                                        .dateSelected,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w900,
                                                                      ),
                                                                ),
                                                                const TextSpan(
                                                                  text: 'de ',
                                                                  style:
                                                                      TextStyle(),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      dateTimeFormat(
                                                                    "LLLL",
                                                                    _model
                                                                        .dateSelected,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style:
                                                                      const TextStyle(),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                if (_model.existHours)
                                                  Stack(
                                                    children: [
                                                      Builder(
                                                        builder: (context) {
                                                          final schedule =
                                                              functions
                                                                  .handleNullList(
                                                                      getJsonField(
                                                                    _model
                                                                        .listSchedule,
                                                                    r'''$''',
                                                                  ))
                                                                  .toList()
                                                                  .take(100000)
                                                                  .toList();

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                schedule.length,
                                                                (scheduleIndex) {
                                                              final scheduleItem =
                                                                  schedule[
                                                                      scheduleIndex];
                                                              return Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                  constraints:
                                                                      const BoxConstraints(
                                                                    maxHeight:
                                                                        double
                                                                            .infinity,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                    shape: BoxShape
                                                                        .rectangle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'SCHEDULE01_PAGE_Row_wvxbxbjo_ON_TAP');
                                                                      if (getJsonField(
                                                                            scheduleItem,
                                                                            r'''$.schedule.id''',
                                                                          ) !=
                                                                          null) {
                                                                        if (functions.convertJsonToString(getJsonField(
                                                                              scheduleItem,
                                                                              r'''$.schedule.type''',
                                                                            )) !=
                                                                            'personal') {
                                                                          logFirebaseEvent(
                                                                              'Row_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            'Schedule02',
                                                                            queryParameters:
                                                                                {
                                                                              'dateSelected': serializeParam(
                                                                                _model.dateSelected,
                                                                                ParamType.DateTime,
                                                                              ),
                                                                              'hourSelected': serializeParam(
                                                                                getJsonField(
                                                                                  scheduleItem,
                                                                                  r'''$.time''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'scheduleSelected': serializeParam(
                                                                                getJsonField(
                                                                                  scheduleItem,
                                                                                  r'''$''',
                                                                                ),
                                                                                ParamType.JSON,
                                                                              ),
                                                                              'scheduleJson': serializeParam(
                                                                                getJsonField(
                                                                                  scheduleItem,
                                                                                  r'''$.schedule''',
                                                                                ),
                                                                                ParamType.JSON,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Row_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            'Schedule03',
                                                                            queryParameters:
                                                                                {
                                                                              'dateSelected': serializeParam(
                                                                                _model.dateSelected,
                                                                                ParamType.DateTime,
                                                                              ),
                                                                              'hourSelected': serializeParam(
                                                                                getJsonField(
                                                                                  scheduleItem,
                                                                                  r'''$.time''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'scheduleCabecalho': serializeParam(
                                                                                getJsonField(
                                                                                  scheduleItem,
                                                                                  r'''$.schedule''',
                                                                                ),
                                                                                ParamType.JSON,
                                                                              ),
                                                                              'isAddNewClient': serializeParam(
                                                                                getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.id''',
                                                                                        ) !=
                                                                                        null
                                                                                    ? false
                                                                                    : true,
                                                                                ParamType.bool,
                                                                              ),
                                                                              'situacao': serializeParam(
                                                                                getJsonField(
                                                                                  scheduleItem,
                                                                                  r'''$.schedule.professional_client[0].pivot.confirmation''',
                                                                                ).toString(),
                                                                                ParamType.String,
                                                                              ),
                                                                              'existAppointment': serializeParam(
                                                                                false,
                                                                                ParamType.bool,
                                                                              ),
                                                                              'duration': serializeParam(
                                                                                getJsonField(
                                                                                  scheduleItem,
                                                                                  r'''$.schedule.duration''',
                                                                                ),
                                                                                ParamType.int,
                                                                              ),
                                                                              'idAppointmentSelected': serializeParam(
                                                                                getJsonField(
                                                                                  scheduleItem,
                                                                                  r'''$.schedule.id''',
                                                                                ),
                                                                                ParamType.int,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        }
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Row_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          'Schedule03',
                                                                          queryParameters:
                                                                              {
                                                                            'dateSelected':
                                                                                serializeParam(
                                                                              _model.dateSelected,
                                                                              ParamType.DateTime,
                                                                            ),
                                                                            'hourSelected':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                scheduleItem,
                                                                                r'''$.time''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'scheduleCabecalho':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                scheduleItem,
                                                                                r'''$.schedule''',
                                                                              ),
                                                                              ParamType.JSON,
                                                                            ),
                                                                            'isAddNewClient':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                        scheduleItem,
                                                                                        r'''$.schedule.id''',
                                                                                      ) !=
                                                                                      null
                                                                                  ? false
                                                                                  : true,
                                                                              ParamType.bool,
                                                                            ),
                                                                            'situacao':
                                                                                serializeParam(
                                                                              getJsonField(
                                                                                scheduleItem,
                                                                                r'''$.schedule.professional_client[0].pivot.confirmation''',
                                                                              ).toString(),
                                                                              ParamType.String,
                                                                            ),
                                                                            'existAppointment':
                                                                                serializeParam(
                                                                              false,
                                                                              ParamType.bool,
                                                                            ),
                                                                          }.withoutNulls,
                                                                        );
                                                                      }
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                SizedBox(
                                                                                  width: 65.0,
                                                                                  child: Stack(
                                                                                    children: [
                                                                                      Text(
                                                                                        getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.time''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              fontSize: 20.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w900,
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Container(
                                                                              width: 5.0,
                                                                              height: 63.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                8.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                if ((getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.id''',
                                                                                        ) !=
                                                                                        null) &&
                                                                                    (getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.service.name''',
                                                                                        ) !=
                                                                                        null))
                                                                                  RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: getJsonField(
                                                                                            scheduleItem,
                                                                                            r'''$.schedule.service.name''',
                                                                                          ).toString(),
                                                                                          style: const TextStyle(),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                if ((getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.id''',
                                                                                        ) !=
                                                                                        null) &&
                                                                                    (functions
                                                                                            .convertStrintToInt(getJsonField(
                                                                                              scheduleItem,
                                                                                              r'''$.schedule.service.is_singular_client''',
                                                                                            ).toString())
                                                                                            .toString() ==
                                                                                        '0') &&
                                                                                    (getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.service.max_clients''',
                                                                                        ) !=
                                                                                        null))
                                                                                  RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Disponíveis: ',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: (int.parse(getJsonField(
                                                                                                    scheduleItem,
                                                                                                    r'''$.schedule.service.max_clients''',
                                                                                                  ).toString()) -
                                                                                                  int.parse(valueOrDefault<String>(
                                                                                                    functions
                                                                                                        .lengthElements(getJsonField(
                                                                                                          scheduleItem,
                                                                                                          r'''$.schedule.professional_client[?(@.pivot.confirmation != 'canceled')]''',
                                                                                                          true,
                                                                                                        ))
                                                                                                        .toString(),
                                                                                                    '0',
                                                                                                  )))
                                                                                              .toString(),
                                                                                          style: const TextStyle(),
                                                                                        ),
                                                                                        const TextSpan(
                                                                                          text: ' de ',
                                                                                          style: TextStyle(),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: getJsonField(
                                                                                            scheduleItem,
                                                                                            r'''$.schedule.service.max_clients''',
                                                                                          ).toString(),
                                                                                          style: const TextStyle(),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                if ((getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.id''',
                                                                                        ) !=
                                                                                        null) &&
                                                                                    (functions.convertJsonToString(getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.type''',
                                                                                        )) ==
                                                                                        'personal'))
                                                                                  RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Agenda pessoal - duração de ',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: getJsonField(
                                                                                            scheduleItem,
                                                                                            r'''$.schedule.duration''',
                                                                                          ).toString(),
                                                                                          style: const TextStyle(),
                                                                                        ),
                                                                                        const TextSpan(
                                                                                          text: ' minutos',
                                                                                          style: TextStyle(),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                if ((getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.id''',
                                                                                        ) !=
                                                                                        null) &&
                                                                                    (functions.convertJsonToString(getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.type''',
                                                                                        )) ==
                                                                                        'personal') &&
                                                                                    (getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.description''',
                                                                                        ) !=
                                                                                        null))
                                                                                  RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Descrição: ',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w800,
                                                                                              ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: getJsonField(
                                                                                            scheduleItem,
                                                                                            r'''$.schedule.description''',
                                                                                          ).toString(),
                                                                                          style: const TextStyle(),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                if (getJsonField(
                                                                                      scheduleItem,
                                                                                      r'''$.schedule.id''',
                                                                                    ) !=
                                                                                    null)
                                                                                  Builder(
                                                                                    builder: (context) {
                                                                                      final clientes = functions
                                                                                          .handleNullList(getJsonField(
                                                                                            scheduleItem,
                                                                                            r'''$.schedule.professional_client''',
                                                                                          ))
                                                                                          .toList()
                                                                                          .take(10000)
                                                                                          .toList();

                                                                                      return Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: List.generate(clientes.length, (clientesIndex) {
                                                                                          final clientesItem = clientes[clientesIndex];
                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (functions.convertJsonToString(getJsonField(
                                                                                                    clientesItem,
                                                                                                    r'''$.pivot.confirmation''',
                                                                                                  )) !=
                                                                                                  'confirmed')
                                                                                                RichText(
                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                  text: TextSpan(
                                                                                                    children: [
                                                                                                      TextSpan(
                                                                                                        text: getJsonField(
                                                                                                          clientesItem,
                                                                                                          r'''$.name''',
                                                                                                        ).toString(),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              fontSize: 12.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                            ),
                                                                                                      ),
                                                                                                      const TextSpan(
                                                                                                        text: ' ( ',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: () {
                                                                                                          if (functions.convertJsonToString(getJsonField(
                                                                                                                clientesItem,
                                                                                                                r'''$.pivot.confirmation''',
                                                                                                              )) ==
                                                                                                              'pending') {
                                                                                                            return 'Pendente';
                                                                                                          } else if (functions.convertJsonToString(getJsonField(
                                                                                                                clientesItem,
                                                                                                                r'''$.pivot.confirmation''',
                                                                                                              )) ==
                                                                                                              'confirmed') {
                                                                                                            return 'Confirmado';
                                                                                                          } else if (functions.convertJsonToString(getJsonField(
                                                                                                                clientesItem,
                                                                                                                r'''$.pivot.confirmation''',
                                                                                                              )) ==
                                                                                                              'absent') {
                                                                                                            return 'Ausente';
                                                                                                          } else {
                                                                                                            return 'Cancelado';
                                                                                                          }
                                                                                                        }(),
                                                                                                        style: const TextStyle(),
                                                                                                      ),
                                                                                                      const TextSpan(
                                                                                                        text: ' )',
                                                                                                        style: TextStyle(),
                                                                                                      )
                                                                                                    ],
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w900,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (functions.convertJsonToString(getJsonField(
                                                                                                    clientesItem,
                                                                                                    r'''$.pivot.confirmation''',
                                                                                                  )) ==
                                                                                                  'confirmed')
                                                                                                RichText(
                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                  text: TextSpan(
                                                                                                    children: [
                                                                                                      TextSpan(
                                                                                                        text: getJsonField(
                                                                                                          clientesItem,
                                                                                                          r'''$.name''',
                                                                                                        ).toString(),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Manrope',
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              fontSize: 12.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                            ),
                                                                                                      )
                                                                                                    ],
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Manrope',
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w900,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                            ],
                                                                                          );
                                                                                        }),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                if (getJsonField(
                                                                                      scheduleItem,
                                                                                      r'''$.schedule.id''',
                                                                                    ) ==
                                                                                    null)
                                                                                  Text(
                                                                                    'Clique aqui para adicionar um agendamento.',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w800,
                                                                                        ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        if (getJsonField(
                                                                              scheduleItem,
                                                                              r'''$.schedule.id''',
                                                                            ) !=
                                                                            null)
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    if (getJsonField(
                                                                                          scheduleItem,
                                                                                          r'''$.schedule.id''',
                                                                                        ) !=
                                                                                        null)
                                                                                      Icon(
                                                                                        Icons.edit,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                      ],
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
                                              ],
                                            ),
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
