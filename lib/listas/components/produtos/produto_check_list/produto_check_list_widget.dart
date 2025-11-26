import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'produto_check_list_model.dart';
export 'produto_check_list_model.dart';

class ProdutoCheckListWidget extends StatefulWidget {
  const ProdutoCheckListWidget({
    super.key,
    required this.produto,
  });

  final VwChecklistDetalhadoRow? produto;

  @override
  State<ProdutoCheckListWidget> createState() => _ProdutoCheckListWidgetState();
}

class _ProdutoCheckListWidgetState extends State<ProdutoCheckListWidget> {
  late ProdutoCheckListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdutoCheckListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 12.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  valueOrDefault<String>(
                    FFAppState()
                        .categorias
                        .where((e) => e.id == widget.produto?.categoriaId)
                        .toList()
                        .firstOrNull
                        ?.imagemUrl,
                    'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/Design_sem_nome_(3).png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL0Rlc2lnbl9zZW1fbm9tZV8oMykucG5nIiwiaWF0IjoxNzUzNTY1MTA1LCJleHAiOjUyNTQwNjExMDV9.xk7FZCQdkBXOquY5sp0iOGh3PkZFxljDWZGczVEcpW0',
                  ),
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: valueOrDefault<String>(
                              widget.produto?.nomePersonalizado,
                              'nome',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          TextSpan(
                            text: '  ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: valueOrDefault<String>(
                              widget.produto?.embalagemPrimQtd?.toString(),
                              '1',
                            ),
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          TextSpan(
                            text: valueOrDefault<String>(
                              widget.produto?.simboloUnidade,
                              'un',
                            ),
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          if (widget.produto!.estoqueMinimo! > 0.0) {
                            return RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Mínimo: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      widget.produto?.estoqueMinimo
                                          ?.toString(),
                                      '1',
                                    ),
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      widget.produto?.embalagemPrimDesc,
                                      'unidade(s)',
                                    ),
                                    style: TextStyle(),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            );
                          } else {
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                'Estoque Mïnimo não definido',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Builder(
                builder: (context) {
                  if (widget.produto?.statusChecklist == 'pedir') {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Comprar: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    widget.produto?.quantidadeCompraDireta
                                        ?.toString(),
                                    '1',
                                  ),
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: '  ',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    widget.produto?.descricaoEmbalagemCompleta,
                                    'um',
                                  ),
                                  style: TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Visibility(
                      visible: widget.produto?.statusChecklist == 'ok',
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Text(
                                'Estoque suficiente para o período',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
