import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'loyalty_history_model.dart';
export 'loyalty_history_model.dart';

class LoyaltyHistoryWidget extends StatefulWidget {
  const LoyaltyHistoryWidget({super.key});

  @override
  State<LoyaltyHistoryWidget> createState() => _LoyaltyHistoryWidgetState();
}

class _LoyaltyHistoryWidgetState extends State<LoyaltyHistoryWidget> {
  late LoyaltyHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoyaltyHistoryModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'LoyaltyHistory'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOYALTY_HISTORY_LoyaltyHistory_ON_INIT_S');
      logFirebaseEvent('LoyaltyHistory_custom_action');
      await actions.lockOrientation();
      logFirebaseEvent('LoyaltyHistory_backend_call');
      _model.clientsStatement =
          await APIOficialGroup.listClientsClubStatementCall.call(
        authToken: currentAuthenticationToken,
      );

      logFirebaseEvent('LoyaltyHistory_update_page_state');
      _model.historys = getJsonField(
        (_model.clientsStatement?.jsonBody ?? ''),
        r'''$.data[*]''',
      );
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.95,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.67,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Histórico de pontos',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 16.0, 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Manter o programa de fidelidade ativo',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: APIOficialGroup.listClubActivateCall
                                        .call(
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final statusListClubActivateResponse =
                                          snapshot.data!;

                                      return Switch.adaptive(
                                        value: _model.statusValue ??=
                                            getJsonField(
                                          statusListClubActivateResponse
                                              .jsonBody,
                                          r'''$.data.active''',
                                        ),
                                        onChanged: (newValue) async {
                                          safeSetState(() =>
                                              _model.statusValue = newValue);
                                          if (newValue) {
                                            logFirebaseEvent(
                                                'LOYALTY_HISTORY_PAGE_status_ON_TOGGLE_ON');
                                            logFirebaseEvent(
                                                'status_backend_call');
                                            _model.apiResultndw2Copy =
                                                await APIOficialGroup
                                                    .saveConfigClubActivateCall
                                                    .call(
                                              authToken:
                                                  currentAuthenticationToken,
                                              active: _model.statusValue,
                                            );

                                            safeSetState(() {});
                                          } else {
                                            logFirebaseEvent(
                                                'LOYALTY_HISTORY_status_ON_TOGGLE_OFF');
                                            logFirebaseEvent(
                                                'status_backend_call');
                                            _model.apiResultndw2 =
                                                await APIOficialGroup
                                                    .saveConfigClubActivateCall
                                                    .call(
                                              authToken:
                                                  currentAuthenticationToken,
                                              active: _model.statusValue,
                                            );

                                            safeSetState(() {});
                                          }
                                        },
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        activeTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        inactiveThumbColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            if (getJsonField(
                                  _model.historys,
                                  r'''$''',
                                ) ==
                                null)
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Você ainda não possui histórico de pontos.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 14.0, 0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/meninablu-transparent.png',
                                        width: 274.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.5,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            if (getJsonField(
                                  _model.historys,
                                  r'''$''',
                                ) !=
                                null)
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final hist = getJsonField(
                                        _model.historys,
                                        r'''$''',
                                      ).toList().take(50000).toList();

                                      return FlutterFlowDataTable<dynamic>(
                                        controller:
                                            _model.paginatedDataTableController,
                                        data: hist,
                                        columnsBuilder: (onSortChanged) => [
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Cliente',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Pontos',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Ação ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Data ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                        dataRowBuilder: (histItem, histIndex,
                                                selected, onSelectChanged) =>
                                            DataRow(
                                          color: WidgetStateProperty.all(
                                            histIndex % 2 == 0
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          cells: [
                                            Text(
                                              getJsonField(
                                                histItem,
                                                r'''$.client.name''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Stack(
                                              children: [
                                                if (functions
                                                        .convertJsonToString(
                                                            getJsonField(
                                                      histItem,
                                                      r'''$.type''',
                                                    )) ==
                                                    'credit')
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions.concateStrings(
                                                          '+ ',
                                                          getJsonField(
                                                            histItem,
                                                            r'''$.value''',
                                                          ).toString()),
                                                      '- ',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                if (functions
                                                        .convertJsonToString(
                                                            getJsonField(
                                                      histItem,
                                                      r'''$.type''',
                                                    )) !=
                                                    'credit')
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions.concateStrings(
                                                          '- ',
                                                          getJsonField(
                                                            histItem,
                                                            r'''$.value''',
                                                          ).toString()),
                                                      '- ',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                              ],
                                            ),
                                            Text(
                                              getJsonField(
                                                histItem,
                                                r'''$.title''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                functions.formatDateHour(
                                                    getJsonField(
                                                  histItem,
                                                  r'''$.created_at''',
                                                ).toString()),
                                                '- ',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ].map((c) => DataCell(c)).toList(),
                                        ),
                                        paginated: false,
                                        selectable: false,
                                        dataRowHeight: 70.0,
                                        columnSpacing: 40.0,
                                        headingRowColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        addHorizontalDivider: true,
                                        addTopAndBottomDivider: false,
                                        hideDefaultHorizontalDivider: true,
                                        horizontalDividerColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        horizontalDividerThickness: 1.0,
                                        addVerticalDivider: false,
                                      );
                                    },
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
        ),
      ),
    );
  }
}
