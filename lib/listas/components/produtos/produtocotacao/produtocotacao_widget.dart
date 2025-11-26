import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'produtocotacao_model.dart';
export 'produtocotacao_model.dart';

class ProdutocotacaoWidget extends StatefulWidget {
  const ProdutocotacaoWidget({
    super.key,
    this.produtocomprador,
    bool? mostrarVendedor,
    this.produtosVendedor,
  }) : this.mostrarVendedor = mostrarVendedor ?? false;

  final VwDetalhesItensSolicitadosRow? produtocomprador;
  final bool mostrarVendedor;
  final VwItensParaCotarRow? produtosVendedor;

  @override
  State<ProdutocotacaoWidget> createState() => _ProdutocotacaoWidgetState();
}

class _ProdutocotacaoWidgetState extends State<ProdutocotacaoWidget> {
  late ProdutocotacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdutocotacaoModel());

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
                        .where((e) =>
                            e.id == widget.produtocomprador?.categoriaId)
                        .toList()
                        .firstOrNull
                        ?.imagemUrl,
                    'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/Design_sem_nome_(3).png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL0Rlc2lnbl9zZW1fbm9tZV8oMykucG5nIiwiaWF0IjoxNzUzNDY0MTYxLCJleHAiOjUyNTM5NjAxNjF9.GV_K8SjtL3G4Y5A4ai36tNVhGnnpMKJLrQ_EgtbeVJM',
                  ),
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            text: widget.mostrarVendedor
                                ? valueOrDefault<String>(
                                    widget.produtosVendedor?.nomePersonalizado,
                                    'nome',
                                  )
                                : valueOrDefault<String>(
                                    widget.produtocomprador?.nomePersonalizado,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          TextSpan(
                            text: widget.mostrarVendedor
                                ? valueOrDefault<String>(
                                    widget
                                        .produtosVendedor?.quantidadeSolicitada
                                        ?.toString(),
                                    '12',
                                  )
                                : valueOrDefault<String>(
                                    widget
                                        .produtocomprador?.quantidadeSolicitada
                                        ?.toString(),
                                    '12',
                                  ),
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: '  ',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          TextSpan(
                            text: widget.mostrarVendedor
                                ? valueOrDefault<String>(
                                    widget.produtosVendedor
                                        ?.descricaoEmbalagemCompleta,
                                    'un',
                                  )
                                : valueOrDefault<String>(
                                    widget.produtocomprador
                                        ?.descricaoEmbalagemCompleta,
                                    'un',
                                  ),
                            style: TextStyle(),
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
              RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.mostrarVendedor
                          ? valueOrDefault<String>(
                              widget
                                  .produtosVendedor?.observacoesDoItemOriginal,
                              'nome',
                            )
                          : valueOrDefault<String>(
                              widget
                                  .produtocomprador?.observacoesDoItemOriginal,
                              'nome',
                            ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            color: Color(0xFF1AB2D6),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
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
              if (widget.mostrarVendedor)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Volume Total de Compra: ',
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
                                text: widget.mostrarVendedor
                                    ? valueOrDefault<String>(
                                        widget.produtosVendedor
                                            ?.quantidadeSolicitadaBase
                                            ?.toString(),
                                        '1',
                                      )
                                    : valueOrDefault<String>(
                                        widget.produtocomprador
                                            ?.quantidadeSolicitadaBase
                                            ?.toString(),
                                        '1',
                                      ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              TextSpan(
                                text: widget.mostrarVendedor
                                    ? valueOrDefault<String>(
                                        widget.produtosVendedor
                                            ?.unidadeBaseSimbolo,
                                        'un',
                                      )
                                    : valueOrDefault<String>(
                                        widget.produtocomprador
                                            ?.unidadeBaseSimbolo,
                                        'un',
                                      ),
                                style: TextStyle(),
                              )
                            ],
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
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
