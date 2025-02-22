import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'list_all_clients_model.dart';
export 'list_all_clients_model.dart';

class ListAllClientsWidget extends StatefulWidget {
  const ListAllClientsWidget({super.key});

  @override
  State<ListAllClientsWidget> createState() => _ListAllClientsWidgetState();
}

class _ListAllClientsWidgetState extends State<ListAllClientsWidget> {
  late ListAllClientsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListAllClientsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'listAllClients'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LIST_ALL_CLIENTS_listAllClients_ON_INIT_');
      logFirebaseEvent('listAllClients_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
      logFirebaseEvent('listAllClients_clear_query_cache');
      FFAppState().clearClientsCacheCache();
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.04,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                1.0,
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
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: FFAppState()
                                                                    .clientsCache(
                                                                  requestFn: () =>
                                                                      APIOficialGroup
                                                                          .listAllClientsCall
                                                                          .call(
                                                                    authToken:
                                                                        currentAuthenticationToken,
                                                                    filter: _model
                                                                        .textController
                                                                        .text,
                                                                  ),
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
                                                                  final columnListAllClientsResponse =
                                                                      snapshot
                                                                          .data!;

                                                                  return SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        if (() {
                                                                          if (_model
                                                                              .useFilter) {
                                                                            return true;
                                                                          } else if ((getJsonField(
                                                                                    columnListAllClientsResponse.jsonBody,
                                                                                    r'''$.data[0].name''',
                                                                                  ) !=
                                                                                  null) &&
                                                                              _model.useFilter) {
                                                                            return false;
                                                                          } else {
                                                                            return true;
                                                                          }
                                                                        }())
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.01,
                                                                                  child: TextFormField(
                                                                                    controller: _model.textController,
                                                                                    focusNode: _model.textFieldFocusNode,
                                                                                    onChanged: (_) => EasyDebounce.debounce(
                                                                                      '_model.textController',
                                                                                      Duration(milliseconds: 300),
                                                                                      () async {
                                                                                        logFirebaseEvent('LIST_ALL_CLIENTS_TextField_iz2yoj5l_ON_T');
                                                                                        logFirebaseEvent('TextField_update_app_state');
                                                                                        FFAppState().myClients = jsonDecode('{\"data\":[{}]}');
                                                                                        safeSetState(() {});
                                                                                        logFirebaseEvent('TextField_update_page_state');
                                                                                        _model.useFilter = true;
                                                                                        safeSetState(() {});
                                                                                        logFirebaseEvent('TextField_clear_query_cache');
                                                                                        FFAppState().clearClientsCacheCache();
                                                                                      },
                                                                                    ),
                                                                                    autofocus: false,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      isDense: true,
                                                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Manrope',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'Filtro',
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
                                                                                      suffixIcon: Icon(
                                                                                        Icons.search,
                                                                                        size: 25.0,
                                                                                      ),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                    validator: _model.textControllerValidator.asValidator(context),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Clientes',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('LIST_ALL_CLIENTS_ADICIONAR_BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_navigate_to');

                                                                                  context.pushNamed(
                                                                                    'NewClient01',
                                                                                    queryParameters: {
                                                                                      'adicionadoPeloMais': serializeParam(
                                                                                        false,
                                                                                        ParamType.bool,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                text: 'Adicionar',
                                                                                icon: Icon(
                                                                                  Icons.add,
                                                                                  size: 15.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 12.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Builder(
                                                                            builder:
                                                                                (context) {
                                                                              final clients = functions
                                                                                  .handleNullList(getJsonField(
                                                                                    columnListAllClientsResponse.jsonBody,
                                                                                    r'''$.data''',
                                                                                  ))
                                                                                  .toList();

                                                                              return ListView.builder(
                                                                                padding: EdgeInsets.zero,
                                                                                primary: false,
                                                                                shrinkWrap: true,
                                                                                scrollDirection: Axis.vertical,
                                                                                itemCount: clients.length,
                                                                                itemBuilder: (context, clientsIndex) {
                                                                                  final clientsItem = clients[clientsIndex];
                                                                                  return Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Flexible(
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.9,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                                ),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 8.0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          Flexible(
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Flexible(
                                                                                                                  child: Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Flexible(
                                                                                                                        flex: 2,
                                                                                                                        child: Text(
                                                                                                                          getJsonField(
                                                                                                                            clientsItem,
                                                                                                                            r'''$.name''',
                                                                                                                          ).toString(),
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Poppins',
                                                                                                                                color: FlutterFlowTheme.of(context).secondary,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                                if ((getJsonField(
                                                                                                                          clientsItem,
                                                                                                                          r'''$.birthday''',
                                                                                                                        ) !=
                                                                                                                        null) ||
                                                                                                                    (getJsonField(
                                                                                                                          clientsItem,
                                                                                                                          r'''$.cellphone[0]''',
                                                                                                                        ) !=
                                                                                                                        null) ||
                                                                                                                    (getJsonField(
                                                                                                                          clientsItem,
                                                                                                                          r'''$.cpf''',
                                                                                                                        ) !=
                                                                                                                        null) ||
                                                                                                                    (getJsonField(
                                                                                                                          clientsItem,
                                                                                                                          r'''$.email''',
                                                                                                                        ) !=
                                                                                                                        null) ||
                                                                                                                    (getJsonField(
                                                                                                                          clientsItem,
                                                                                                                          r'''$.gender''',
                                                                                                                        ) !=
                                                                                                                        null))
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                    children: [
                                                                                                                      if (_model.openDataClientRow != clientsIndex)
                                                                                                                        Align(
                                                                                                                          alignment: AlignmentDirectional(1.0, -1.0),
                                                                                                                          child: FlutterFlowIconButton(
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderRadius: 14.0,
                                                                                                                            buttonSize: 40.0,
                                                                                                                            fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                            icon: Icon(
                                                                                                                              Icons.expand_more,
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                              size: 24.0,
                                                                                                                            ),
                                                                                                                            onPressed: () async {
                                                                                                                              logFirebaseEvent('LIST_ALL_CLIENTS_PAGE_reduce_ON_TAP');
                                                                                                                              logFirebaseEvent('reduce_update_page_state');
                                                                                                                              _model.openDataClientRow = clientsIndex;
                                                                                                                              safeSetState(() {});
                                                                                                                            },
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (_model.openDataClientRow == clientsIndex)
                                                                                                                        Align(
                                                                                                                          alignment: AlignmentDirectional(1.0, -1.0),
                                                                                                                          child: FlutterFlowIconButton(
                                                                                                                            borderColor: Colors.transparent,
                                                                                                                            borderRadius: 14.0,
                                                                                                                            buttonSize: 40.0,
                                                                                                                            fillColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                            icon: Icon(
                                                                                                                              Icons.expand_less_sharp,
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                              size: 24.0,
                                                                                                                            ),
                                                                                                                            onPressed: () async {
                                                                                                                              logFirebaseEvent('LIST_ALL_CLIENTS_PAGE_expand_ON_TAP');
                                                                                                                              logFirebaseEvent('expand_update_page_state');
                                                                                                                              _model.openDataClientRow = null;
                                                                                                                              safeSetState(() {});
                                                                                                                            },
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
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          if (functions.convertJsonToString(getJsonField(
                                                                                                                clientsItem,
                                                                                                                r'''$.status''',
                                                                                                              )) !=
                                                                                                              'inactive')
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 5.0, 0.0),
                                                                                                              child: Text(
                                                                                                                'Valor total: R\$ ${functions.formatCurrency(getJsonField(
                                                                                                                  clientsItem,
                                                                                                                  r'''$.total_monthly_value''',
                                                                                                                ).toString())}',
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Poppins',
                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.bold,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          if (functions.convertJsonToString(getJsonField(
                                                                                                                clientsItem,
                                                                                                                r'''$.status''',
                                                                                                              )) ==
                                                                                                              'inactive')
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                'Inativo',
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Poppins',
                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.bold,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    if (_model.openDataClientRow == clientsIndex)
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 10.0, 0.0),
                                                                                                        child: Column(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                              children: [
                                                                                                                if (getJsonField(
                                                                                                                      clientsItem,
                                                                                                                      r'''$.cpf''',
                                                                                                                    ) !=
                                                                                                                    null)
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: MediaQuery.sizeOf(context).width * 0.4,
                                                                                                                        child: Stack(
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                Text(
                                                                                                                                  'CPF: ',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Manrope',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                Text(
                                                                                                                                  functions.formatStringToCPF(getJsonField(
                                                                                                                                    clientsItem,
                                                                                                                                    r'''$.cpf''',
                                                                                                                                  ).toString())!,
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Manrope',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w500,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                if (getJsonField(
                                                                                                                      clientsItem,
                                                                                                                      r'''$.cellphone[0]''',
                                                                                                                    ) !=
                                                                                                                    null)
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Stack(
                                                                                                                        children: [
                                                                                                                          Row(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            children: [
                                                                                                                              Text(
                                                                                                                                'Tel: ',
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Manrope',
                                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                              Text(
                                                                                                                                functions.formatMaskPhone(getJsonField(
                                                                                                                                  clientsItem,
                                                                                                                                  r'''$.cellphone[0]''',
                                                                                                                                ).toString())!,
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Manrope',
                                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w500,
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
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                              children: [
                                                                                                                if (getJsonField(
                                                                                                                      clientsItem,
                                                                                                                      r'''$.birthday''',
                                                                                                                    ) !=
                                                                                                                    null)
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Container(
                                                                                                                        width: MediaQuery.sizeOf(context).width * 0.4,
                                                                                                                        child: Stack(
                                                                                                                          children: [
                                                                                                                            Row(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              children: [
                                                                                                                                Text(
                                                                                                                                  'Nascimento: ',
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Manrope',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w600,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                Text(
                                                                                                                                  functions.formatDate(getJsonField(
                                                                                                                                    clientsItem,
                                                                                                                                    r'''$.birthday''',
                                                                                                                                  ).toString())!,
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Manrope',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.w500,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ],
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                if (getJsonField(
                                                                                                                      clientsItem,
                                                                                                                      r'''$.gender''',
                                                                                                                    ) !=
                                                                                                                    null)
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Stack(
                                                                                                                        children: [
                                                                                                                          Row(
                                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                                            children: [
                                                                                                                              Text(
                                                                                                                                'Gênero: ',
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Manrope',
                                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w600,
                                                                                                                                    ),
                                                                                                                              ),
                                                                                                                              Text(
                                                                                                                                () {
                                                                                                                                  if (functions.convertJsonToString(getJsonField(
                                                                                                                                        clientsItem,
                                                                                                                                        r'''$.gender''',
                                                                                                                                      )) ==
                                                                                                                                      'H') {
                                                                                                                                    return 'Masculino';
                                                                                                                                  } else if (functions.convertJsonToString(getJsonField(
                                                                                                                                        clientsItem,
                                                                                                                                        r'''$.gender''',
                                                                                                                                      )) ==
                                                                                                                                      'M') {
                                                                                                                                    return 'Feminino';
                                                                                                                                  } else if (functions.convertJsonToString(getJsonField(
                                                                                                                                        clientsItem,
                                                                                                                                        r'''$.gender''',
                                                                                                                                      )) ==
                                                                                                                                      'O') {
                                                                                                                                    return 'Outro';
                                                                                                                                  } else {
                                                                                                                                    return '';
                                                                                                                                  }
                                                                                                                                }(),
                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                      fontFamily: 'Manrope',
                                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                      fontWeight: FontWeight.w500,
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
                                                                                                            Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                              children: [
                                                                                                                if ((getJsonField(
                                                                                                                          clientsItem,
                                                                                                                          r'''$.email''',
                                                                                                                        ) !=
                                                                                                                        null) &&
                                                                                                                    (getJsonField(
                                                                                                                          clientsItem,
                                                                                                                          r'''$.email[0]''',
                                                                                                                        ) !=
                                                                                                                        null))
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        'E-mail: ',
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.w600,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                      Text(
                                                                                                                        functions.replaceAll(
                                                                                                                            functions.replaceAll(
                                                                                                                                getJsonField(
                                                                                                                                  clientsItem,
                                                                                                                                  r'''$.email''',
                                                                                                                                ).toString(),
                                                                                                                                '[',
                                                                                                                                ''),
                                                                                                                            ']',
                                                                                                                            '')!,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.w500,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    Align(
                                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                      child: Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                          children: [
                                                                                                            Flexible(
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                children: [
                                                                                                                  if (getJsonField(
                                                                                                                        clientsItem,
                                                                                                                        r'''$.packages[*]''',
                                                                                                                      ) ==
                                                                                                                      null)
                                                                                                                    Column(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      children: [
                                                                                                                        Text(
                                                                                                                          'Sem pacotes',
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Manrope',
                                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.bold,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  Flexible(
                                                                                                                    child: Builder(
                                                                                                                      builder: (context) {
                                                                                                                        final packages = functions
                                                                                                                            .handleNullList(getJsonField(
                                                                                                                              clientsItem,
                                                                                                                              r'''$.packages''',
                                                                                                                            ))
                                                                                                                            .toList();

                                                                                                                        return Column(
                                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                          children: List.generate(packages.length, (packagesIndex) {
                                                                                                                            final packagesItem = packages[packagesIndex];
                                                                                                                            return Visibility(
                                                                                                                              visible: getJsonField(
                                                                                                                                    clientsItem,
                                                                                                                                    r'''$.packages[*]''',
                                                                                                                                  ) !=
                                                                                                                                  null,
                                                                                                                              child: Row(
                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                children: [
                                                                                                                                  Flexible(
                                                                                                                                    child: Row(
                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                      children: [
                                                                                                                                        RichText(
                                                                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                          text: TextSpan(
                                                                                                                                            children: [
                                                                                                                                              TextSpan(
                                                                                                                                                text: getJsonField(
                                                                                                                                                  packagesItem,
                                                                                                                                                  r'''$.name''',
                                                                                                                                                ).toString(),
                                                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                      fontFamily: 'Manrope',
                                                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                                      letterSpacing: 0.0,
                                                                                                                                                    ),
                                                                                                                                              )
                                                                                                                                            ],
                                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                  fontFamily: 'Manrope',
                                                                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                                ),
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Text(
                                                                                                                                          ' - ',
                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                fontFamily: 'Manrope',
                                                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                              ),
                                                                                                                                        ),
                                                                                                                                        Builder(
                                                                                                                                          builder: (context) {
                                                                                                                                            final services = getJsonField(
                                                                                                                                              packagesItem,
                                                                                                                                              r'''$.services''',
                                                                                                                                            ).toList();

                                                                                                                                            return Row(
                                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                                              children: List.generate(services.length, (servicesIndex) {
                                                                                                                                                final servicesItem = services[servicesIndex];
                                                                                                                                                return Padding(
                                                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                                                  child: RichText(
                                                                                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                                    text: TextSpan(
                                                                                                                                                      children: [
                                                                                                                                                        TextSpan(
                                                                                                                                                          text: getJsonField(
                                                                                                                                                            servicesItem,
                                                                                                                                                            r'''$.name''',
                                                                                                                                                          ).toString(),
                                                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                                fontFamily: 'Manrope',
                                                                                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                                                letterSpacing: 0.0,
                                                                                                                                                              ),
                                                                                                                                                        )
                                                                                                                                                      ],
                                                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                                            fontFamily: 'Manrope',
                                                                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                                                            letterSpacing: 0.0,
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
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            );
                                                                                                                          }),
                                                                                                                        );
                                                                                                                      },
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 16.0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          if (getJsonField(
                                                                                                                clientsItem,
                                                                                                                r'''$.cellphone[0]''',
                                                                                                              ) !=
                                                                                                              null)
                                                                                                            Flexible(
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                children: [
                                                                                                                  Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                    child: FFButtonWidget(
                                                                                                                      onPressed: () async {
                                                                                                                        logFirebaseEvent('LIST_ALL_CLIENTS_ATENDIMENTOS_BTN_ON_TAP');
                                                                                                                        logFirebaseEvent('Button_navigate_to');

                                                                                                                        context.pushNamed(
                                                                                                                          'NewClient05',
                                                                                                                          queryParameters: {
                                                                                                                            'idClient': serializeParam(
                                                                                                                              getJsonField(
                                                                                                                                clientsItem,
                                                                                                                                r'''$.id''',
                                                                                                                              ),
                                                                                                                              ParamType.int,
                                                                                                                            ),
                                                                                                                          }.withoutNulls,
                                                                                                                        );
                                                                                                                      },
                                                                                                                      text: 'Atendimentos',
                                                                                                                      options: FFButtonOptions(
                                                                                                                        height: 40.0,
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                              fontSize: 12.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                        elevation: 0.0,
                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                    child: FFButtonWidget(
                                                                                                                      onPressed: () async {
                                                                                                                        logFirebaseEvent('LIST_ALL_CLIENTS_AVALIAES_BTN_ON_TAP');
                                                                                                                        logFirebaseEvent('Button_navigate_to');

                                                                                                                        context.pushNamed(
                                                                                                                          'Ratings',
                                                                                                                          queryParameters: {
                                                                                                                            'professionalclientid': serializeParam(
                                                                                                                              getJsonField(
                                                                                                                                clientsItem,
                                                                                                                                r'''$.id''',
                                                                                                                              ),
                                                                                                                              ParamType.int,
                                                                                                                            ),
                                                                                                                            'idClient': serializeParam(
                                                                                                                              getJsonField(
                                                                                                                                clientsItem,
                                                                                                                                r'''$.id''',
                                                                                                                              ),
                                                                                                                              ParamType.int,
                                                                                                                            ),
                                                                                                                          }.withoutNulls,
                                                                                                                        );
                                                                                                                      },
                                                                                                                      text: 'Avaliações',
                                                                                                                      options: FFButtonOptions(
                                                                                                                        height: 40.0,
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                              fontSize: 12.0,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                            ),
                                                                                                                        elevation: 0.0,
                                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  if (getJsonField(
                                                                                                                        clientsItem,
                                                                                                                        r'''$.cellphone[0]''',
                                                                                                                      ) !=
                                                                                                                      null)
                                                                                                                    Padding(
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                      child: FFButtonWidget(
                                                                                                                        onPressed: () async {
                                                                                                                          logFirebaseEvent('LIST_ALL_CLIENTS_PAGE__BTN_ON_TAP');
                                                                                                                          logFirebaseEvent('Button_launch_u_r_l');
                                                                                                                          await launchURL(functions.concateStrings(
                                                                                                                              'https://wa.me/55',
                                                                                                                              functions.clearMaskPhone(getJsonField(
                                                                                                                                clientsItem,
                                                                                                                                r'''$.cellphone[0]''',
                                                                                                                              ).toString()))!);
                                                                                                                        },
                                                                                                                        text: '',
                                                                                                                        icon: Icon(
                                                                                                                          FFIcons.kwhatsapp,
                                                                                                                          size: 25.0,
                                                                                                                        ),
                                                                                                                        options: FFButtonOptions(
                                                                                                                          width: 40.0,
                                                                                                                          height: 40.0,
                                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                fontFamily: 'Manrope',
                                                                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                              ),
                                                                                                                          elevation: 0.0,
                                                                                                                          borderRadius: BorderRadius.circular(14.0),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                    child: FFButtonWidget(
                                                                                                                      onPressed: () async {
                                                                                                                        logFirebaseEvent('LIST_ALL_CLIENTS_PAGE__BTN_ON_TAP');
                                                                                                                        logFirebaseEvent('Button_navigate_to');

                                                                                                                        context.pushNamed(
                                                                                                                          'NewClient01',
                                                                                                                          queryParameters: {
                                                                                                                            'idClient': serializeParam(
                                                                                                                              getJsonField(
                                                                                                                                clientsItem,
                                                                                                                                r'''$.id''',
                                                                                                                              ),
                                                                                                                              ParamType.int,
                                                                                                                            ),
                                                                                                                            'adicionadoPeloMais': serializeParam(
                                                                                                                              false,
                                                                                                                              ParamType.bool,
                                                                                                                            ),
                                                                                                                          }.withoutNulls,
                                                                                                                        );
                                                                                                                      },
                                                                                                                      text: '',
                                                                                                                      icon: Icon(
                                                                                                                        Icons.edit,
                                                                                                                        size: 25.0,
                                                                                                                      ),
                                                                                                                      options: FFButtonOptions(
                                                                                                                        width: 40.0,
                                                                                                                        height: 40.0,
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                              fontFamily: 'Manrope',
                                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                        elevation: 0.0,
                                                                                                                        borderRadius: BorderRadius.circular(14.0),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  FFButtonWidget(
                                                                                                                    onPressed: () async {
                                                                                                                      logFirebaseEvent('LIST_ALL_CLIENTS_PAGE__BTN_ON_TAP');
                                                                                                                      logFirebaseEvent('Button_alert_dialog');
                                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                                            context: context,
                                                                                                                            builder: (alertDialogContext) {
                                                                                                                              return WebViewAware(
                                                                                                                                child: AlertDialog(
                                                                                                                                  title: Text('Tem certeza que deseja excluir?'),
                                                                                                                                  content: Text('Excluiremos também todos seus agendamentos e informações relacionadas. Caso queira manter o histórico, edite este cliente e coloque como inativo.'),
                                                                                                                                  actions: [
                                                                                                                                    TextButton(
                                                                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                                      child: Text('Cancelar'),
                                                                                                                                    ),
                                                                                                                                    TextButton(
                                                                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                                      child: Text('Confirmar'),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              );
                                                                                                                            },
                                                                                                                          ) ??
                                                                                                                          false;
                                                                                                                      if (confirmDialogResponse) {
                                                                                                                        logFirebaseEvent('Button_backend_call');
                                                                                                                        _model.apiResultc8y = await APIOficialGroup.dELETEClientCall.call(
                                                                                                                          authToken: currentAuthenticationToken,
                                                                                                                          id: getJsonField(
                                                                                                                            clientsItem,
                                                                                                                            r'''$.id''',
                                                                                                                          ).toString(),
                                                                                                                        );

                                                                                                                        logFirebaseEvent('Button_show_snack_bar');
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
                                                                                                                      }
                                                                                                                      logFirebaseEvent('Button_clear_query_cache');
                                                                                                                      FFAppState().clearClientsCacheCache();

                                                                                                                      safeSetState(() {});
                                                                                                                    },
                                                                                                                    text: '',
                                                                                                                    icon: Icon(
                                                                                                                      Icons.delete_outline,
                                                                                                                      size: 25.0,
                                                                                                                    ),
                                                                                                                    options: FFButtonOptions(
                                                                                                                      width: 40.0,
                                                                                                                      height: 40.0,
                                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                            fontFamily: 'Manrope',
                                                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                          ),
                                                                                                                      elevation: 0.0,
                                                                                                                      borderRadius: BorderRadius.circular(14.0),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          if (getJsonField(
                                                                                                                clientsItem,
                                                                                                                r'''$.cellphone[0]''',
                                                                                                              ) ==
                                                                                                              null)
                                                                                                            Flexible(
                                                                                                              child: Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                children: [
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    children: [
                                                                                                                      Padding(
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                        child: FFButtonWidget(
                                                                                                                          onPressed: () async {
                                                                                                                            logFirebaseEvent('LIST_ALL_CLIENTS_ATENDIMENTOS_BTN_ON_TAP');
                                                                                                                            logFirebaseEvent('Button_navigate_to');

                                                                                                                            context.pushNamed(
                                                                                                                              'NewClient05',
                                                                                                                              queryParameters: {
                                                                                                                                'idClient': serializeParam(
                                                                                                                                  getJsonField(
                                                                                                                                    clientsItem,
                                                                                                                                    r'''$.id''',
                                                                                                                                  ),
                                                                                                                                  ParamType.int,
                                                                                                                                ),
                                                                                                                              }.withoutNulls,
                                                                                                                            );
                                                                                                                          },
                                                                                                                          text: 'Atendimentos',
                                                                                                                          options: FFButtonOptions(
                                                                                                                            height: 40.0,
                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                  fontFamily: 'Manrope',
                                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                                  fontSize: 12.0,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                            elevation: 0.0,
                                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Padding(
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                                        child: FFButtonWidget(
                                                                                                                          onPressed: () async {
                                                                                                                            logFirebaseEvent('LIST_ALL_CLIENTS_AVALIAES_BTN_ON_TAP');
                                                                                                                            logFirebaseEvent('Button_navigate_to');

                                                                                                                            context.pushNamed(
                                                                                                                              'Ratings',
                                                                                                                              queryParameters: {
                                                                                                                                'professionalclientid': serializeParam(
                                                                                                                                  getJsonField(
                                                                                                                                    clientsItem,
                                                                                                                                    r'''$.id''',
                                                                                                                                  ),
                                                                                                                                  ParamType.int,
                                                                                                                                ),
                                                                                                                                'idClient': serializeParam(
                                                                                                                                  getJsonField(
                                                                                                                                    clientsItem,
                                                                                                                                    r'''$.id''',
                                                                                                                                  ),
                                                                                                                                  ParamType.int,
                                                                                                                                ),
                                                                                                                              }.withoutNulls,
                                                                                                                            );
                                                                                                                          },
                                                                                                                          text: 'Avaliações',
                                                                                                                          options: FFButtonOptions(
                                                                                                                            height: 40.0,
                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                  fontFamily: 'Manrope',
                                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                                  fontSize: 12.0,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.bold,
                                                                                                                                ),
                                                                                                                            elevation: 0.0,
                                                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                                    children: [
                                                                                                                      Padding(
                                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                                        child: FFButtonWidget(
                                                                                                                          onPressed: () async {
                                                                                                                            logFirebaseEvent('LIST_ALL_CLIENTS_PAGE__BTN_ON_TAP');
                                                                                                                            logFirebaseEvent('Button_navigate_to');

                                                                                                                            context.pushNamed(
                                                                                                                              'NewClient01',
                                                                                                                              queryParameters: {
                                                                                                                                'idClient': serializeParam(
                                                                                                                                  getJsonField(
                                                                                                                                    clientsItem,
                                                                                                                                    r'''$.id''',
                                                                                                                                  ),
                                                                                                                                  ParamType.int,
                                                                                                                                ),
                                                                                                                                'adicionadoPeloMais': serializeParam(
                                                                                                                                  false,
                                                                                                                                  ParamType.bool,
                                                                                                                                ),
                                                                                                                              }.withoutNulls,
                                                                                                                            );
                                                                                                                          },
                                                                                                                          text: '',
                                                                                                                          icon: Icon(
                                                                                                                            Icons.edit,
                                                                                                                            size: 25.0,
                                                                                                                          ),
                                                                                                                          options: FFButtonOptions(
                                                                                                                            width: 40.0,
                                                                                                                            height: 40.0,
                                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                  fontFamily: 'Manrope',
                                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                ),
                                                                                                                            elevation: 0.0,
                                                                                                                            borderRadius: BorderRadius.circular(14.0),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      FFButtonWidget(
                                                                                                                        onPressed: () async {
                                                                                                                          logFirebaseEvent('LIST_ALL_CLIENTS_PAGE__BTN_ON_TAP');
                                                                                                                          logFirebaseEvent('Button_alert_dialog');
                                                                                                                          var confirmDialogResponse = await showDialog<bool>(
                                                                                                                                context: context,
                                                                                                                                builder: (alertDialogContext) {
                                                                                                                                  return WebViewAware(
                                                                                                                                    child: AlertDialog(
                                                                                                                                      title: Text('Tem certeza que deseja excluir?'),
                                                                                                                                      content: Text('Excluiremos também todos seus agendamentos e informações relacionadas. Caso queira manter o histórico, edite este cliente e coloque como inativo.'),
                                                                                                                                      actions: [
                                                                                                                                        TextButton(
                                                                                                                                          onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                                          child: Text('Cancelar'),
                                                                                                                                        ),
                                                                                                                                        TextButton(
                                                                                                                                          onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                                          child: Text('Confirmar'),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                  );
                                                                                                                                },
                                                                                                                              ) ??
                                                                                                                              false;
                                                                                                                          if (confirmDialogResponse) {
                                                                                                                            logFirebaseEvent('Button_backend_call');
                                                                                                                            _model.apiResultc8yCopy = await APIOficialGroup.dELETEClientCall.call(
                                                                                                                              authToken: currentAuthenticationToken,
                                                                                                                              id: getJsonField(
                                                                                                                                clientsItem,
                                                                                                                                r'''$.id''',
                                                                                                                              ).toString(),
                                                                                                                            );

                                                                                                                            logFirebaseEvent('Button_show_snack_bar');
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
                                                                                                                          }
                                                                                                                          logFirebaseEvent('Button_clear_query_cache');
                                                                                                                          FFAppState().clearClientsCacheCache();

                                                                                                                          safeSetState(() {});
                                                                                                                        },
                                                                                                                        text: '',
                                                                                                                        icon: Icon(
                                                                                                                          Icons.delete_outline,
                                                                                                                          size: 25.0,
                                                                                                                        ),
                                                                                                                        options: FFButtonOptions(
                                                                                                                          width: 40.0,
                                                                                                                          height: 40.0,
                                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                                                fontFamily: 'Manrope',
                                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                              ),
                                                                                                                          elevation: 0.0,
                                                                                                                          borderRadius: BorderRadius.circular(14.0),
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
                                                                                            ],
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
                                                                        if ((getJsonField(
                                                                                  columnListAllClientsResponse.jsonBody,
                                                                                  r'''$.data[0].name''',
                                                                                ) ==
                                                                                null) &&
                                                                            !_model.useFilter)
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Você ainda não possui clientes cadastrados.',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.asset(
                                                                                    'assets/images/meninablu-transparent.png',
                                                                                    width: 274.0,
                                                                                    height: MediaQuery.sizeOf(context).height * 0.5,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        if ((getJsonField(
                                                                                  columnListAllClientsResponse.jsonBody,
                                                                                  r'''$.data[0].name''',
                                                                                ) ==
                                                                                null) &&
                                                                            _model.useFilter)
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  'Nenhum cliente encontrado com este nome.',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.asset(
                                                                                    'assets/images/meninablu-transparent.png',
                                                                                    width: 274.0,
                                                                                    height: MediaQuery.sizeOf(context).height * 0.5,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              ),
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
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: wrapWithModel(
                                                      model: _model.footerModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
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
