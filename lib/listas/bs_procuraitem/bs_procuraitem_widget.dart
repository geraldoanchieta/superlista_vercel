import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/empty_component/search_empty/search_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/botton_sheet/cria_produto/cria_produto_widget.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bs_procuraitem_model.dart';
export 'bs_procuraitem_model.dart';

class BsProcuraitemWidget extends StatefulWidget {
  const BsProcuraitemWidget({
    super.key,
    required this.pesquisa,
    this.solicitacao,
    this.listaMestra,
  });

  final String? pesquisa;
  final int? solicitacao;
  final int? listaMestra;

  @override
  State<BsProcuraitemWidget> createState() => _BsProcuraitemWidgetState();
}

class _BsProcuraitemWidgetState extends State<BsProcuraitemWidget> {
  late BsProcuraitemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsProcuraitemModel());

    _model.shortBioTextController ??= TextEditingController();
    _model.shortBioFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.8,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      width: 50.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Procurar',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineMediumIsCustom,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: FaIcon(
                        FontAwesomeIcons.solidTimesCircle,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 35.0,
                      ),
                    ),
                  ),
                ],
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: TextFormField(
                    controller: _model.shortBioTextController,
                    focusNode: _model.shortBioFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.shortBioTextController',
                      Duration(milliseconds: 500),
                      () async {
                        if (widget.pesquisa == 'produtoMaster') {
                          _model.apiResultalh = await FuncoesRpcGroup
                              .buscarProdutosMasterCall
                              .call(
                            pTermoBusca: _model.shortBioTextController.text,
                            token: currentJwtToken,
                          );

                          if ((_model.apiResultalh?.succeeded ?? true)) {
                            await Future.delayed(
                              Duration(
                                milliseconds: 2,
                              ),
                            );
                          }
                        } else {
                          if (widget.pesquisa == 'solicitacao') {
                            _model.apiResultalg = await FuncoesRpcGroup
                                .buscarItensSolicitadosCall
                                .call(
                              pTermoBusca: _model.shortBioTextController.text,
                              pSolicitacaoId: widget.solicitacao,
                              token: currentJwtToken,
                            );

                            if ((_model.apiResultalg?.succeeded ?? true)) {
                              await Future.delayed(
                                Duration(
                                  milliseconds: 2,
                                ),
                              );
                            }
                          } else {
                            _model.apiResultali = await FuncoesRpcGroup
                                .buscarItensCheckListCall
                                .call(
                              pTermoBusca: _model.shortBioTextController.text,
                              pListaMestraId: widget.listaMestra,
                              token: currentJwtToken,
                            );

                            if ((_model.apiResultali?.succeeded ?? true)) {
                              await Future.delayed(
                                Duration(
                                  milliseconds: 2,
                                ),
                              );
                            }
                          }
                        }

                        safeSetState(() {});
                      },
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Nome do Produto',
                      hintText: 'Digite o nome do produto para pesquisa',
                      hintStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 32.0, 20.0, 12.0),
                      suffixIcon: _model.shortBioTextController!.text.isNotEmpty
                          ? InkWell(
                              onTap: () async {
                                _model.shortBioTextController?.clear();
                                if (widget.pesquisa == 'produtoMaster') {
                                  _model.apiResultalh = await FuncoesRpcGroup
                                      .buscarProdutosMasterCall
                                      .call(
                                    pTermoBusca:
                                        _model.shortBioTextController.text,
                                    token: currentJwtToken,
                                  );

                                  if ((_model.apiResultalh?.succeeded ??
                                      true)) {
                                    await Future.delayed(
                                      Duration(
                                        milliseconds: 2,
                                      ),
                                    );
                                  }
                                } else {
                                  if (widget.pesquisa == 'solicitacao') {
                                    _model.apiResultalg = await FuncoesRpcGroup
                                        .buscarItensSolicitadosCall
                                        .call(
                                      pTermoBusca:
                                          _model.shortBioTextController.text,
                                      pSolicitacaoId: widget.solicitacao,
                                      token: currentJwtToken,
                                    );

                                    if ((_model.apiResultalg?.succeeded ??
                                        true)) {
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 2,
                                        ),
                                      );
                                    }
                                  } else {
                                    _model.apiResultali = await FuncoesRpcGroup
                                        .buscarItensCheckListCall
                                        .call(
                                      pTermoBusca:
                                          _model.shortBioTextController.text,
                                      pListaMestraId: widget.listaMestra,
                                      token: currentJwtToken,
                                    );

                                    if ((_model.apiResultali?.succeeded ??
                                        true)) {
                                      await Future.delayed(
                                        Duration(
                                          milliseconds: 2,
                                        ),
                                      );
                                    }
                                  }
                                }

                                safeSetState(() {});
                                safeSetState(() {});
                              },
                              child: Icon(
                                Icons.clear,
                                color: Color(0xFF757575),
                                size: 22.0,
                              ),
                            )
                          : null,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    textAlign: TextAlign.start,
                    validator: _model.shortBioTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              if (_model.shortBioTextController.text != '')
                Builder(
                  builder: (context) {
                    if (widget.pesquisa == 'produtoMaster') {
                      return Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final produtomaaster =
                                  (_model.apiResultalh?.jsonBody ?? '')
                                      .toList();
                              if (produtomaaster.isEmpty) {
                                return Container(
                                  width: MediaQuery.sizeOf(context).width * 0.9,
                                  child: SearchEmptyWidget(),
                                );
                              }

                              return ListView.separated(
                                padding: EdgeInsets.fromLTRB(
                                  0,
                                  20.0,
                                  0,
                                  60.0,
                                ),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: produtomaaster.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 8.0),
                                itemBuilder: (context, produtomaasterIndex) {
                                  final produtomaasterItem =
                                      produtomaaster[produtomaasterIndex];
                                  return Material(
                                    color: Colors.transparent,
                                    elevation: 1.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.acrtegoria =
                                              await CategoriasTable().queryRows(
                                            queryFn: (q) => q.eqOrNull(
                                              'id',
                                              getJsonField(
                                                produtomaasterItem,
                                                r'''$.categoria_id''',
                                              ),
                                            ),
                                          );
                                          _model.produtoMaster =
                                              await ProdutosMasterTable()
                                                  .queryRows(
                                            queryFn: (q) => q.eqOrNull(
                                              'id',
                                              getJsonField(
                                                produtomaasterItem,
                                                r'''$.id''',
                                              ),
                                            ),
                                          );
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: CriaProdutoWidget(
                                                  produto: _model.produtoMaster!
                                                      .firstOrNull!,
                                                  categorias: _model
                                                      .acrtegoria!.firstOrNull!,
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          safeSetState(() {});
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        produtomaasterItem,
                                                        r'''$.nome''',
                                                      )?.toString(),
                                                      'nome',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'comic neue',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      );
                    } else if (widget.pesquisa == 'solicitacao') {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final solicitacaos =
                                (_model.apiResultalg?.jsonBody ?? '').toList();
                            if (solicitacaos.isEmpty) {
                              return SearchEmptyWidget();
                            }

                            return ListView.separated(
                              padding: EdgeInsets.fromLTRB(
                                0,
                                20.0,
                                0,
                                60.0,
                              ),
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: solicitacaos.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 8.0),
                              itemBuilder: (context, solicitacaosIndex) {
                                final solicitacaosItem =
                                    solicitacaos[solicitacaosIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.solicitacao =
                                        await VwDetalhesItensSolicitadosTable()
                                            .queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'item_solicitado_id',
                                        getJsonField(
                                          solicitacaosItem,
                                          r'''$.item_solicitado_id''',
                                        ),
                                      ),
                                    );
                                    Navigator.pop(context);

                                    context.pushNamed(
                                      CotacaoProdutoWidget.routeName,
                                      queryParameters: {
                                        'produto': serializeParam(
                                          _model.solicitacao?.firstOrNull,
                                          ParamType.SupabaseRow,
                                        ),
                                      }.withoutNulls,
                                    );

                                    safeSetState(() {});
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 1.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    getJsonField(
                                                      solicitacaosItem,
                                                      r'''$.nome_personalizado''',
                                                    )?.toString(),
                                                    'nome',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'comic neue',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final checkliststs =
                                (_model.apiResultali?.jsonBody ?? '').toList();
                            if (checkliststs.isEmpty) {
                              return SearchEmptyWidget();
                            }

                            return ListView.separated(
                              padding: EdgeInsets.fromLTRB(
                                0,
                                20.0,
                                0,
                                60.0,
                              ),
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: checkliststs.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 8.0),
                              itemBuilder: (context, checkliststsIndex) {
                                final checkliststsItem =
                                    checkliststs[checkliststsIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.checkList =
                                        await VwChecklistDetalhadoTable()
                                            .queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'item_da_lista_id',
                                        getJsonField(
                                          checkliststsItem,
                                          r'''$.item_da_lista_id''',
                                        ),
                                      ),
                                    );
                                    Navigator.pop(context);

                                    context.pushNamed(
                                      CheckProdutoWidget.routeName,
                                      queryParameters: {
                                        'produto': serializeParam(
                                          _model.checkList?.firstOrNull,
                                          ParamType.SupabaseRow,
                                        ),
                                      }.withoutNulls,
                                    );

                                    safeSetState(() {});
                                  },
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 1.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    getJsonField(
                                                      checkliststsItem,
                                                      r'''$.nome_personalizado''',
                                                    )?.toString(),
                                                    'nao encontrado',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'comic neue',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
