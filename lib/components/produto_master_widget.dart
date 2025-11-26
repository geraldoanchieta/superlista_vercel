import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/botton_sheet/cria_produto/cria_produto_widget.dart';
import 'package:flutter/material.dart';
import 'produto_master_model.dart';
export 'produto_master_model.dart';

class ProdutoMasterWidget extends StatefulWidget {
  const ProdutoMasterWidget({
    super.key,
    required this.produto,
    this.categoria,
  });

  final ProdutosMasterRow? produto;
  final CategoriasRow? categoria;

  @override
  State<ProdutoMasterWidget> createState() => _ProdutoMasterWidgetState();
}

class _ProdutoMasterWidgetState extends State<ProdutoMasterWidget> {
  late ProdutoMasterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdutoMasterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
            return Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: CriaProdutoWidget(
                produto: widget.produto!,
                categorias: widget.categoria!,
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      },
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.produto?.nome,
                        'nome',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Container(
                        width: 40.0,
                        height: 35.0,
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.19, 0.0),
                              child: Icon(
                                Icons.add,
                                color: FlutterFlowTheme.of(context).success,
                                size: 35.0,
                              ),
                            ),
                            if (isiOS)
                              Align(
                                alignment: AlignmentDirectional(-0.18, -0.24),
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(222.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '12',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
