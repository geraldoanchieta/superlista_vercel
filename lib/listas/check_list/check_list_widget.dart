import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listas/bs_procuraitem/bs_procuraitem_widget.dart';
import '/listas/components/produtos/produto_check_list/produto_check_list_widget.dart';
import '/listas/empty_check_lista/empty_check_lista_widget.dart';
import '/listas/empty_list/empty_list_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'check_list_model.dart';
export 'check_list_model.dart';

class CheckListWidget extends StatefulWidget {
  const CheckListWidget({super.key});

  static String routeName = 'checkList';
  static String routePath = 'checkList';

  @override
  State<CheckListWidget> createState() => _CheckListWidgetState();
}

class _CheckListWidgetState extends State<CheckListWidget>
    with TickerProviderStateMixin {
  late CheckListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckListModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

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

    return FutureBuilder<List<VwChecklistDetalhadoRow>>(
      future: VwChecklistDetalhadoTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'lista_mestra_id',
              FFAppState().listaemanalise,
            )
            .order('nome_personalizado', ascending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).lightGray,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<VwChecklistDetalhadoRow> checkListVwChecklistDetalhadoRowList =
            snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).lightGray,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: BsProcuraitemWidget(
                      pesquisa: 'checkList',
                      listaMestra: FFAppState().listaemanalise,
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: FaIcon(
              FontAwesomeIcons.search,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
          drawer: Drawer(
            elevation: 16.0,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(22.0, 64.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          wrapWithModel(
                            model: _model.iconeTutorialModel,
                            updateCallback: () => safeSetState(() {}),
                            child: IconeTutorialWidget(
                              tutorial: 'Check List',
                              ordem: 5,
                              nome: 'Enviar Listas',
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(AddProdutosNaListaWidget.routeName);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.add,
                              color: FlutterFlowTheme.of(context).success,
                              size: 35.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Adicionar Produtos',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'comic neue',
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await ChecklistsTable().update(
                            data: {
                              'finalizado_em':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'status': 'Concluido',
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id',
                              FFAppState().checkListaid,
                            ),
                          );
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.check,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Finalizar Check List',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'comic neue',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await ChecklistsTable().update(
                            data: {
                              'status': 'em_andamento',
                              'finalizado_em': supaSerialize<DateTime>(null),
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id',
                              FFAppState().checkListaid,
                            ),
                          );
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Reiniciar Check List',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'comic neue',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await ChecklistsTable().update(
                            data: {
                              'status': 'cancelado',
                              'finalizado_em':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'id',
                              FFAppState().checkListaid,
                            ),
                          );
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.cancel_outlined,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Cancelar Check List',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'comic neue',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.dataPreenchida = true;
                          safeSetState(() {});
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.gavel,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Enviar Para Cotação',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'comic neue',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (_model.dataPreenchida)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Data limite para envio dos preços',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'comic neue',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final _datePickedDate =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: getCurrentTimestamp,
                                      lastDate: DateTime(2050),
                                      builder: (context, child) {
                                        return wrapInMaterialDatePickerTheme(
                                          context,
                                          child!,
                                          headerBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          headerForegroundColor:
                                              FlutterFlowTheme.of(context).info,
                                          headerTextStyle: FlutterFlowTheme.of(
                                                  context)
                                              .headlineLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLargeFamily,
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLargeIsCustom,
                                              ),
                                          pickerBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          pickerForegroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          selectedDateTimeBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          selectedDateTimeForegroundColor:
                                              FlutterFlowTheme.of(context).info,
                                          actionButtonForegroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          iconSize: 24.0,
                                        );
                                      },
                                    );

                                    TimeOfDay? _datePickedTime;
                                    if (_datePickedDate != null) {
                                      _datePickedTime = await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.fromDateTime(
                                            getCurrentTimestamp),
                                        builder: (context, child) {
                                          return wrapInMaterialTimePickerTheme(
                                            context,
                                            child!,
                                            headerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            headerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            headerTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .override(
                                                      fontFamily: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLargeFamily,
                                                      fontSize: 32.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLargeIsCustom,
                                                    ),
                                            pickerBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            pickerForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            selectedDateTimeBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            selectedDateTimeForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            actionButtonForegroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 24.0,
                                          );
                                        },
                                      );
                                    }

                                    if (_datePickedDate != null &&
                                        _datePickedTime != null) {
                                      safeSetState(() {
                                        _model.datePicked = DateTime(
                                          _datePickedDate.year,
                                          _datePickedDate.month,
                                          _datePickedDate.day,
                                          _datePickedTime!.hour,
                                          _datePickedTime.minute,
                                        );
                                      });
                                    } else if (_model.datePicked != null) {
                                      safeSetState(() {
                                        _model.datePicked = getCurrentTimestamp;
                                      });
                                    }
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 40.0,
                                      ),
                                      Builder(
                                        builder: (context) {
                                          if (_model.datePicked == null) {
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Escolha uma data',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'comic neue',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            );
                                          } else {
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                  "dd/MM/yyyy HH:mm",
                                                  _model.datePicked,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'comic neue',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (_model.datePicked != null)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          FFAppState().checklistParaCotacao =
                                              [];
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToChecklistParaCotacao(
                                                  FFAppState().checkListaid);
                                          FFAppState().homeIndex = 2;
                                          safeSetState(() {});
                                          _model.solitcitacao =
                                              await FuncoesRpcGroup
                                                  .iniciaCotacaoComCheckListCall
                                                  .call(
                                            checkListsList: FFAppState()
                                                .checklistParaCotacao,
                                            data: dateTimeFormat(
                                              "yyyy/MM/dd HH:mm:ss",
                                              _model.datePicked,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            token: currentJwtToken,
                                          );

                                          if ((_model.solitcitacao?.succeeded ??
                                              true)) {
                                            _model.apiResult1y8 =
                                                await EdgeFunctionsGroup
                                                    .publicaCotacaoCall
                                                    .call(
                                              cotacaoId: (_model
                                                      .solitcitacao?.jsonBody ??
                                                  ''),
                                              data: dateTimeFormat(
                                                "yyyy/MM/dd HH:mm:ss",
                                                _model.datePicked,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              token: currentJwtToken,
                                            );

                                            if ((_model
                                                    .apiResult1y8?.succeeded ??
                                                true)) {
                                              context.pushNamed(
                                                  HomeRestauranteWidget
                                                      .routeName);
                                            }
                                          }

                                          safeSetState(() {});
                                        },
                                        text: 'Enviar',
                                        options: FFButtonOptions(
                                          width: 120.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                    ].divide(SizedBox(height: 32.0)),
                  ),
                ],
              ),
            ),
          ),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    decoration: BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.commonAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CommonAppBarWidget(
                        name: 'Check List',
                        color: false,
                        iconExtra: true,
                        novaacao: () async {
                          context.goNamed(HomeRestauranteWidget.routeName);
                        },
                        actionicon: () async {
                          scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 100.0,
                        height: MediaQuery.sizeOf(context).height * 0.9,
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleMediumIsCustom,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primary,
                                tabs: [
                                  Tab(
                                    text: 'Check list',
                                  ),
                                  Tab(
                                    text: 'Item Ok',
                                  ),
                                  Tab(
                                    text: 'Cotar',
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [() async {}, () async {}, () async {}][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Builder(
                                            builder: (context) {
                                              final itens =
                                                  checkListVwChecklistDetalhadoRowList
                                                      .where((e) =>
                                                          e.statusChecklist ==
                                                          'a_fazer')
                                                      .toList()
                                                      .sortedList(
                                                          keyOf: (e) =>
                                                              e.categoriaId!,
                                                          desc: false)
                                                      .toList();
                                              if (itens.isEmpty) {
                                                return Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 600.0,
                                                  child:
                                                      EmptyCheckListaWidget(),
                                                );
                                              }

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  16.0,
                                                  0,
                                                  45.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: itens.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 12.0),
                                                itemBuilder:
                                                    (context, itensIndex) {
                                                  final itensItem =
                                                      itens[itensIndex];
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.goNamed(
                                                        CheckProdutoWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'produto':
                                                              serializeParam(
                                                            itensItem,
                                                            ParamType
                                                                .SupabaseRow,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 1.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Container(
                                                        width: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              ProdutoCheckListWidget(
                                                            key: Key(
                                                                'Keyezl_${itensIndex}_of_${itens.length}'),
                                                            produto: itensItem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Builder(
                                            builder: (context) {
                                              final itens =
                                                  checkListVwChecklistDetalhadoRowList
                                                      .where((e) =>
                                                          e.statusChecklist ==
                                                          'ok')
                                                      .toList();
                                              if (itens.isEmpty) {
                                                return Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 600.0,
                                                  child: EmptyListWidget(
                                                    titulo: 'Tudo OK!!',
                                                    texto:
                                                        'Até o momneto nenhum produto que esteja com estoque suficiente  foi selecionado',
                                                    confirmacao: true,
                                                    espera: false,
                                                  ),
                                                );
                                              }

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  16.0,
                                                  0,
                                                  45.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: itens.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 12.0),
                                                itemBuilder:
                                                    (context, itensIndex) {
                                                  final itensItem =
                                                      itens[itensIndex];
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.goNamed(
                                                        CheckProdutoWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'produto':
                                                              serializeParam(
                                                            itensItem,
                                                            ParamType
                                                                .SupabaseRow,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 1.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Container(
                                                        width: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              ProdutoCheckListWidget(
                                                            key: Key(
                                                                'Keywok_${itensIndex}_of_${itens.length}'),
                                                            produto: itensItem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Builder(
                                            builder: (context) {
                                              final itens =
                                                  checkListVwChecklistDetalhadoRowList
                                                      .where((e) =>
                                                          e.statusChecklist ==
                                                          'pedir')
                                                      .toList();
                                              if (itens.isEmpty) {
                                                return Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 600.0,
                                                  child: EmptyListWidget(
                                                    titulo:
                                                        'Sem Itens para cotar!!!',
                                                    texto:
                                                        'Até o momento nenhum item selecionado para cotação!!!!',
                                                    confirmacao: false,
                                                    espera: true,
                                                  ),
                                                );
                                              }

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  16.0,
                                                  0,
                                                  45.0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: itens.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 12.0),
                                                itemBuilder:
                                                    (context, itensIndex) {
                                                  final itensItem =
                                                      itens[itensIndex];
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.goNamed(
                                                        CheckProdutoWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'produto':
                                                              serializeParam(
                                                            itensItem,
                                                            ParamType
                                                                .SupabaseRow,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 1.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        width: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              ProdutoCheckListWidget(
                                                            key: Key(
                                                                'Keykoa_${itensIndex}_of_${itens.length}'),
                                                            produto: itensItem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
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
      },
    );
  }
}
