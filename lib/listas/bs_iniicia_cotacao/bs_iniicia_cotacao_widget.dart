import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/listas/restaurante/restaurante_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'bs_iniicia_cotacao_model.dart';
export 'bs_iniicia_cotacao_model.dart';

class BsIniiciaCotacaoWidget extends StatefulWidget {
  const BsIniiciaCotacaoWidget({
    super.key,
    required this.solicitacoaId,
    required this.restautanteVendedor,
  });

  final int? solicitacoaId;
  final VwGerenciamentoVendedoresRow? restautanteVendedor;

  @override
  State<BsIniiciaCotacaoWidget> createState() => _BsIniiciaCotacaoWidgetState();
}

class _BsIniiciaCotacaoWidgetState extends State<BsIniiciaCotacaoWidget> {
  late BsIniiciaCotacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsIniiciaCotacaoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.restautanteVendedor =
          await VwGerenciamentoVendedoresTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'vendedor_id',
              FFAppState().vendedroe.id,
            )
            .eqOrNull(
              'restaurante_id',
              widget.restautanteVendedor?.restauranteId,
            ),
      );
    });

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
        height: MediaQuery.sizeOf(context).height * 0.9,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
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
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: 220.0,
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.restauranteModel,
                    updateCallback: () => safeSetState(() {}),
                    child: RestauranteWidget(
                      restaurante: widget.restautanteVendedor!,
                      exivbicao: false,
                      modo: 'vendedor',
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Alterar Condições',
                    options: FFButtonOptions(
                      width: 270.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: Colors.white,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    wrapWithModel(
                      model: _model.iconeTutorialModel,
                      updateCallback: () => safeSetState(() {}),
                      child: IconeTutorialWidget(
                        tutorial: 'Vendas',
                        ordem: 2,
                        nome: 'Começar',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Informe a data de validade das propostas',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineMediumIsCustom,
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
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Text(
                        'Após essa data o comprador não coseguirá fazer pedidos. Sempre coloque a data mais loga que puder para não precisar ter que alterar essa dta no futuro. ',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineMediumIsCustom,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      final _datePickedDate = await showDatePicker(
                        context: context,
                        initialDate: getCurrentTimestamp,
                        firstDate: getCurrentTimestamp,
                        lastDate: DateTime(2050),
                        builder: (context, child) {
                          return wrapInMaterialDatePickerTheme(
                            context,
                            child!,
                            headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            headerTextStyle: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineLargeFamily,
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineLargeIsCustom,
                                ),
                            pickerBackgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            selectedDateTimeBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                            actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                            iconSize: 24.0,
                          );
                        },
                      );

                      if (_datePickedDate != null) {
                        safeSetState(() {
                          _model.datePicked = DateTime(
                            _datePickedDate.year,
                            _datePickedDate.month,
                            _datePickedDate.day,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 40.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              dateTimeFormat(
                                "dd/MM/yyyy",
                                _model.datePicked,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              'Escolha uma data',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (_model.datePicked != null)
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 44.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.apiResultjcw =
                              await FuncoesRpcGroup.iniciarCotacaoCall.call(
                            pSolicitacaoId: widget.solicitacoaId,
                            pDataValidadeProposta:
                                _model.datePicked?.toString(),
                            token: currentJwtToken,
                          );

                          if ((_model.apiResultjcw?.succeeded ?? true)) {
                            FFAppState().cotacao =
                                ((_model.apiResultjcw?.jsonBody ?? '')
                                        .toList()
                                        .map<CotacaoStruct?>(
                                            CotacaoStruct.maybeFromMap)
                                        .toList() as Iterable<CotacaoStruct?>)
                                    .withoutNulls
                                    .firstOrNull!;
                            safeSetState(() {});

                            context.goNamed(
                              CotacaoListaVendedorWidget.routeName,
                              queryParameters: {
                                'solicitacao': serializeParam(
                                  widget.solicitacoaId,
                                  ParamType.int,
                                ),
                                'cotacao': serializeParam(
                                  ((_model.apiResultjcw?.jsonBody ?? '')
                                          .toList()
                                          .map<CotacaoStruct?>(
                                              CotacaoStruct.maybeFromMap)
                                          .toList() as Iterable<CotacaoStruct?>)
                                      .withoutNulls
                                      .firstOrNull
                                      ?.id,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          }

                          safeSetState(() {});
                        },
                        text: 'Iniciar',
                        options: FFButtonOptions(
                          width: 270.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleMediumIsCustom,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                        ),
                      ),
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
