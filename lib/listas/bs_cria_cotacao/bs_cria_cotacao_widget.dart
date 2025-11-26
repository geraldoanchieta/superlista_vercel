import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/components/produtos/criacotacacomponent/criacotacacomponent_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bs_cria_cotacao_model.dart';
export 'bs_cria_cotacao_model.dart';

class BsCriaCotacaoWidget extends StatefulWidget {
  const BsCriaCotacaoWidget({
    super.key,
    required this.itemCotacao,
    required this.tipoDeUnidade,
  });

  final VwItensParaCotarRow? itemCotacao;
  final String? tipoDeUnidade;

  @override
  State<BsCriaCotacaoWidget> createState() => _BsCriaCotacaoWidgetState();
}

class _BsCriaCotacaoWidgetState extends State<BsCriaCotacaoWidget> {
  late BsCriaCotacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsCriaCotacaoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Criar cotação para o produto:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                wrapWithModel(
                  model: _model.iconeTutorialModel,
                  updateCallback: () => safeSetState(() {}),
                  child: IconeTutorialWidget(
                    tutorial: 'Vendas',
                    ordem: 4,
                    nome: 'Cadastrar',
                  ),
                ),
                InkWell(
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
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.itemCotacao?.nomeProduto,
                    'produto',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: wrapWithModel(
                model: _model.criacotacacomponentModel,
                updateCallback: () => safeSetState(() {}),
                child: CriacotacacomponentWidget(
                  tipodeunidade: 'massa',
                  itemcotacao: widget.itemCotacao!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
