import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/dialog_component/dilog_box/dilog_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'vendedores_model.dart';
export 'vendedores_model.dart';

class VendedoresWidget extends StatefulWidget {
  const VendedoresWidget({
    super.key,
    required this.vendedor,
  });

  final VwGerenciamentoVendedoresRow? vendedor;

  @override
  State<VendedoresWidget> createState() => _VendedoresWidgetState();
}

class _VendedoresWidgetState extends State<VendedoresWidget> {
  late VendedoresModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendedoresModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (widget.vendedor?.status != 'confirmado')
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
                    widget.vendedor?.fotoUrl,
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
                        widget.vendedor?.nomeEmpresa,
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
                        widget.vendedor?.nome,
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
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(60.0, 8.0, 0.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: valueOrDefault<String>(
                        widget.vendedor?.ddd,
                        '48',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Satoshi',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    TextSpan(
                      text: ' - ',
                      style: TextStyle(),
                    ),
                    TextSpan(
                      text: valueOrDefault<String>(
                        widget.vendedor?.telefoneWhatsapp,
                        '3424324',
                      ),
                      style: TextStyle(),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                textAlign: TextAlign.start,
              ),
            ),
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
                          titulo: 'Excluir vendedor?',
                          testo:
                              'Tem certeza que deseja excluir esse vendedor das suas cotações. Ele nao receberá mais nenhum convite e nâo terá mais acesso a sua lista de cotações',
                          confima: 'Sim',
                          recusa: 'Não',
                          actionConfirm: () async {
                            _model.apiResultqwe1 = await FuncoesRpcGroup
                                .desvincularEDeletarVendedorCall
                                .call(
                              pVendedorId: widget.vendedor?.vendedorId,
                              token: currentJwtToken,
                            );

                            if ((_model.apiResultqwe1?.succeeded ?? true)) {
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
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              Navigator.pop(context);
                            }
                          },
                          actionRecusa: () async {
                            Navigator.pop(context);
                          },
                        ),
                      );
                    },
                  );

                  safeSetState(() {});
                },
                child: FaIcon(
                  FontAwesomeIcons.trashAlt,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 35.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
