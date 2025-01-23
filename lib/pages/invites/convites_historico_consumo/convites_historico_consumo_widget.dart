import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'convites_historico_consumo_model.dart';
export 'convites_historico_consumo_model.dart';

class ConvitesHistoricoConsumoWidget extends StatefulWidget {
  const ConvitesHistoricoConsumoWidget({super.key});

  @override
  State<ConvitesHistoricoConsumoWidget> createState() =>
      _ConvitesHistoricoConsumoWidgetState();
}

class _ConvitesHistoricoConsumoWidgetState
    extends State<ConvitesHistoricoConsumoWidget> {
  late ConvitesHistoricoConsumoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConvitesHistoricoConsumoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ConvitesHistoricoConsumo'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CONVITES_HISTORICO_CONSUMO_ConvitesHisto');
      logFirebaseEvent('ConvitesHistoricoConsumo_custom_action');
      await actions.lockOrientation();
      logFirebaseEvent('ConvitesHistoricoConsumo_update_app_stat');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
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
          child: Column(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Histórico de consumo',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      font: GoogleFonts.poppins(),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 10.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final consumo = getJsonField(
                                      FFAppState().myinvitehistory,
                                      r'''$.used''',
                                    ).toList();

                                    return FlutterFlowDataTable<dynamic>(
                                      controller:
                                          _model.paginatedDataTableController,
                                      data: consumo,
                                      columnsBuilder: (onSortChanged) => [
                                        DataColumn2(
                                          label: DefaultTextStyle.merge(
                                            softWrap: true,
                                            child: Text(
                                              'Título',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    font: GoogleFonts.manrope(),
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                              'Nome do profissional',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    font: GoogleFonts.manrope(),
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                              'Data do uso',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    font: GoogleFonts.manrope(),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      dataRowBuilder: (consumoItem,
                                              consumoIndex,
                                              selected,
                                              onSelectChanged) =>
                                          DataRow(
                                        color: MaterialStateProperty.all(
                                          consumoIndex % 2 == 0
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                        cells: [
                                          Text(
                                            getJsonField(
                                              FFAppState().myinvitehistory,
                                              r'''$.title''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.manrope(),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              functions.firstName(getJsonField(
                                                consumoItem,
                                                r'''$.professional_name''',
                                              ).toString()),
                                              ' - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.manrope(),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              functions
                                                  .formatDateHour(getJsonField(
                                                consumoItem,
                                                r'''$.used_at''',
                                              ).toString()),
                                              ' - ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.manrope(),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ].map((c) => DataCell(c)).toList(),
                                      ),
                                      paginated: false,
                                      selectable: false,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.06,
                                      columnSpacing: 20.0,
                                      headingRowColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(8.0),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 200.0,
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
        ),
      ),
    );
  }
}
