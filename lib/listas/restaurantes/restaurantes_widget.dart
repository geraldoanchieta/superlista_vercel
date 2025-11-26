import '/backend/supabase/supabase.dart';
import '/dialog_component/dilog_box/dilog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'restaurantes_model.dart';
export 'restaurantes_model.dart';

class RestaurantesWidget extends StatefulWidget {
  const RestaurantesWidget({
    super.key,
    required this.restaurante,
  });

  final VwRestaurantesDoVendedorRow? restaurante;

  @override
  State<RestaurantesWidget> createState() => _RestaurantesWidgetState();
}

class _RestaurantesWidgetState extends State<RestaurantesWidget> {
  late RestaurantesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RestaurantesModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (widget.restaurante?.situacao == 'inativa')
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  'Pendente',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  valueOrDefault<String>(
                    widget.restaurante?.logoUrl,
                    'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/Design_sem_nome_(3).png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL0Rlc2lnbl9zZW1fbm9tZV8oMykucG5nIiwiaWF0IjoxNzUzMzMwMTcyLCJleHAiOjUyNTM4MjYxNzJ9.fUneo3cn53xp92yg3fRxydUvw1DwBI7E2f2wAVeJc8s',
                  ),
                  width: 56.0,
                  height: 56.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.restaurante?.nomeFantasia,
                        'empresa',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Satoshi',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.restaurante?.nomeContato,
                        'nome',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.0, -1.0),
                          child: Text(
                            '4.0',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Satoshi',
                                  color: FlutterFlowTheme.of(context).black40,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 0.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/star.png',
                              width: 24.0,
                              height: 24.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Builder(
          builder: (context) {
            if (widget.restaurante?.situacao == 'ativa') {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: DilogBoxWidget(
                                titulo: 'Desvincular da Empresa?',
                                testo:
                                    'Tem certeza que deseja sa empresa das suas rede de contatos? Você só terá acesso novemento somente mediate novo convite.',
                                confima: 'Sim',
                                recusa: 'Não',
                                actionConfirm: () async {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Vendedor excluido com sucesso!!',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                },
                                actionRecusa: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            );
                          },
                        );
                      },
                      child: FaIcon(
                        FontAwesomeIcons.trashAlt,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 35.0,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Aceitar Convite',
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await RestauranteVendedoresTable().delete(
                              matchingRows: (rows) => rows
                                  .eqOrNull(
                                    'restaurante_id',
                                    widget.restaurante?.restauranteId,
                                  )
                                  .eqOrNull(
                                    'vendedor_id',
                                    FFAppState().vendedroe.id,
                                  ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Convite recusado!!',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                            );
                          },
                          child: Icon(
                            Icons.thumb_down,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 35.0,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await RestauranteVendedoresTable().update(
                              data: {
                                'situacao': 'ativa',
                              },
                              matchingRows: (rows) => rows
                                  .eqOrNull(
                                    'restaurante_id',
                                    widget.restaurante?.restauranteId,
                                  )
                                  .eqOrNull(
                                    'vendedor_id',
                                    FFAppState().vendedroe.id,
                                  ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Convite aceito!!',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).success,
                              ),
                            );
                          },
                          child: Icon(
                            Icons.thumb_up_off_alt_sharp,
                            color: FlutterFlowTheme.of(context).success,
                            size: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ],
    );
  }
}
