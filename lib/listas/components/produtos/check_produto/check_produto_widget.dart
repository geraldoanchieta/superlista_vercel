import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listas/components/botton_sheet/edita_produto/edita_produto_widget.dart';
import '/listas/components/bs_embalagem_check_list/bs_embalagem_check_list_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'check_produto_model.dart';
export 'check_produto_model.dart';

class CheckProdutoWidget extends StatefulWidget {
  const CheckProdutoWidget({
    super.key,
    required this.produto,
  });

  final VwChecklistDetalhadoRow? produto;

  static String routeName = 'checkProduto';
  static String routePath = 'checkProduto';

  @override
  State<CheckProdutoWidget> createState() => _CheckProdutoWidgetState();
}

class _CheckProdutoWidgetState extends State<CheckProdutoWidget> {
  late CheckProdutoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckProdutoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.produto = ItemCheckListStruct(
        itemDaListaId: widget.produto?.itemDaListaId,
        listaMestraId: widget.produto?.listaMestraId,
        itemChecklistId: widget.produto?.itemChecklistId,
        checklistId: widget.produto?.checklistId,
        nomePersonalizado: widget.produto?.nomePersonalizado,
        nomeProdutoMaster: widget.produto?.nomeProdutoMaster,
        categoriaId: widget.produto?.categoriaId,
        simboloUnidade: widget.produto?.simboloUnidade,
        estoqueMinimo: widget.produto?.estoqueMinimo,
        unidadeId: widget.produto?.unidadeId,
        embalagemPrimDesc: widget.produto?.embalagemPrimDesc,
        embalagemPrimQtd: widget.produto?.embalagemPrimQtd,
        embalagemSecDesc: widget.produto?.embalagemPrimDesc,
        embalagemSecQtd: widget.produto?.embalagemSecQtd,
        cotadoPorUnidadeBase: widget.produto?.cotadoPorUnidadeBase,
        estoqueApurado: widget.produto?.estoqueApurado,
        quantidadeCompraDireta: widget.produto?.quantidadeCompraDireta,
        descricaoEmbalagemCompleta: widget.produto?.descricaoEmbalagemCompleta,
        statusChecklist: widget.produto?.statusChecklist,
      );
      _model.cmprar = valueOrDefault<double>(
        widget.produto?.quantidadeCompraDireta,
        0.0,
      );
      safeSetState(() {});
      FFAppState().itemCheckList = ItemCheckListStruct(
        itemDaListaId: widget.produto?.itemDaListaId,
        listaMestraId: widget.produto?.listaMestraId,
        itemChecklistId: widget.produto?.itemChecklistId,
        checklistId: widget.produto?.checklistId,
        nomePersonalizado: widget.produto?.nomePersonalizado,
        nomeProdutoMaster: widget.produto?.nomeProdutoMaster,
        categoriaId: widget.produto?.categoriaId,
        simboloUnidade: widget.produto?.simboloUnidade,
        estoqueMinimo: widget.produto?.estoqueMinimo,
        unidadeId: widget.produto?.unidadeId,
        embalagemPrimDesc: widget.produto?.embalagemPrimDesc,
        embalagemPrimQtd: widget.produto?.embalagemPrimQtd,
        embalagemSecDesc: widget.produto?.embalagemPrimDesc,
        embalagemSecQtd: widget.produto?.embalagemSecQtd,
        cotadoPorUnidadeBase: widget.produto?.cotadoPorUnidadeBase,
        estoqueApurado: widget.produto?.estoqueApurado,
        quantidadeCompraDireta: widget.produto?.quantidadeCompraDireta,
        descricaoEmbalagemCompleta: widget.produto?.descricaoEmbalagemCompleta,
        statusChecklist: widget.produto?.statusChecklist,
      );
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      _model.cmprar.toString(),
      '0',
    ));
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).lightGray,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            FFAppState()
                                .fotos
                                .where((e) =>
                                    widget.produto?.itemDaListaId == e.id)
                                .toList()
                                .firstOrNull
                                ?.foto,
                            'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/varanda/Design_sem_nome_(3).png',
                          ),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 63.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.goNamed(CheckListWidget.routeName);
                          },
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(FavouritePageWidget.routeName);
                            },
                            child: Icon(
                              Icons.favorite_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      16.0,
                      0,
                      12.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            wrapWithModel(
                              model: _model.iconeTutorialModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: IconeTutorialWidget(
                                tutorial: 'Check List',
                                ordem: 6,
                                nome: 'Ajustes',
                              ),
                            ),
                            Flexible(
                              child: Text(
                                valueOrDefault<String>(
                                  _model.produto?.nomePersonalizado,
                                  'Nome',
                                ),
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: EditaProdutoWidget(
                                          produto: widget.produto!,
                                          categorias: FFAppState()
                                              .categorias
                                              .where((e) =>
                                                  e.id ==
                                                  widget.produto?.categoriaId)
                                              .toList()
                                              .firstOrNull!,
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Icon(
                                Icons.edit,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: custom_widgets.Readmoretext(
                          width: double.infinity,
                          height: 103.0,
                          text: valueOrDefault<String>(
                            widget.produto?.observacoesItemLista,
                            'Sem Observações',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      wrapWithModel(
                                        model: _model.iconeTutorialModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: IconeTutorialWidget(
                                          tutorial: 'Check List',
                                          ordem: 5,
                                          nome: 'Info',
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Embalagem de uso',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Satoshi',
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        isDismissible: false,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: BsEmbalagemCheckListWidget(
                                                produto: widget.produto!,
                                                dtProdutp: _model.produto,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(
                                          () => _model.produtoback = value));

                                      _model.produto = _model.produtoback;
                                      safeSetState(() {});
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            _model
                                                .produtoback!.nomePersonalizado,
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );

                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.edit,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 30.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  if (_model.produto?.cotadoPorUnidadeBase ??
                                      false) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Cotado em  ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: valueOrDefault<String>(
                                                  _model
                                                      .produto?.simboloUnidade,
                                                  'un',
                                                ),
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0,
                                                ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Satoshi',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ],
                                    );
                                  } else {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: valueOrDefault<String>(
                                                  _model.produto
                                                      ?.descricaoEmbalagemCompleta,
                                                  'un',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Satoshi',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                },
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Estoque mínimo',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  if (widget.produto!.estoqueMinimo! > 0.0) {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: valueOrDefault<String>(
                                                  _model.produto?.estoqueMinimo
                                                      .toString(),
                                                  '1',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              TextSpan(
                                                text: ' ',
                                                style: TextStyle(),
                                              ),
                                              TextSpan(
                                                text: valueOrDefault<String>(
                                                  _model.produto
                                                      ?.embalagemPrimDesc,
                                                  'unidade(s)',
                                                ),
                                                style: TextStyle(),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ],
                                    );
                                  } else {
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Estoque mínimo não definido',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ],
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 210.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lightGray,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0x36696969),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.cmprar = _model.cmprar + -1.0;
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    _model.cmprar.toString(),
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0x36696969),
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.cmprar = _model.cmprar + 1.0;
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: 155.65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 120.0,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textController',
                                Duration(milliseconds: 100),
                                () async {
                                  _model.cmprar = functions.texttToDouble(
                                      _model.textController.text)!;
                                  safeSetState(() {});
                                },
                              ),
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Ou digite a quantidade ',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                                alignLabelWithHint: true,
                                hintText: 'TextField',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelMediumIsCustom,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
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
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              textAlign: TextAlign.center,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 1.0,
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (_model.cmprar > 0.0)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.apiResult123 =
                        await FuncoesRpcGroup.atualizaritemchecklistCall.call(
                      pChecklistId: FFAppState().checkListaid,
                      pItemDaListaId: widget.produto?.itemDaListaId,
                      pQuantidadeCompraDireta: _model.cmprar,
                      pItemOk: false,
                      token: currentJwtToken,
                    );

                    if ((_model.apiResult123?.succeeded ?? true)) {
                      _model.cmprar = 0.0;
                      safeSetState(() {});
                      safeSetState(() {
                        _model.textController?.text = valueOrDefault<String>(
                          _model.cmprar.toString(),
                          '0',
                        );
                      });

                      context.goNamed(CheckListWidget.routeName);
                    }

                    safeSetState(() {});
                  },
                  text: 'Enviar Para Cotação',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 15.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).success,
                    textStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily: 'Satoshi',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 32.0),
              child: FFButtonWidget(
                onPressed: () async {
                  _model.apiResult1qw1 =
                      await FuncoesRpcGroup.atualizaritemchecklistCall.call(
                    pChecklistId: FFAppState().checkListaid,
                    pItemDaListaId: widget.produto?.itemDaListaId,
                    pItemOk: true,
                    token: currentJwtToken,
                  );

                  if ((_model.apiResult1qw1?.succeeded ?? true)) {
                    context.goNamed(CheckListWidget.routeName);
                  }

                  safeSetState(() {});
                },
                text: 'Não Preciso',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 56.0,
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 15.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
