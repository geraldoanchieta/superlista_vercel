import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'tipo_de_preco_cotacao_model.dart';
export 'tipo_de_preco_cotacao_model.dart';

class TipoDePrecoCotacaoWidget extends StatefulWidget {
  const TipoDePrecoCotacaoWidget({
    super.key,
    required this.embalagem,
    this.undBase,
    this.cotadoUndBase,
  });

  final String? embalagem;
  final String? undBase;
  final bool? cotadoUndBase;

  @override
  State<TipoDePrecoCotacaoWidget> createState() =>
      _TipoDePrecoCotacaoWidgetState();
}

class _TipoDePrecoCotacaoWidgetState extends State<TipoDePrecoCotacaoWidget> {
  late TipoDePrecoCotacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipoDePrecoCotacaoModel());

    _model.txtEMbalagemValorTextController ??= TextEditingController();
    _model.txtEMbalagemValorFocusNode ??= FocusNode();

    _model.txtembalagemUndBaseTextController ??= TextEditingController();
    _model.txtembalagemUndBaseFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (!widget.cotadoUndBase!)
                    Container(
                      decoration: BoxDecoration(),
                      child: Visibility(
                        visible: _model.txtembalagemUndBaseTextController.text == '',
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Valor de ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                      TextSpan(
                                        text: widget.embalagem!,
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Container(
                                height: 40.0,
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: 100.0,
                                  child: TextFormField(
                                    controller:
                                        _model.txtEMbalagemValorTextController,
                                    focusNode:
                                        _model.txtEMbalagemValorFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.txtEMbalagemValorTextController',
                                      Duration(milliseconds: 20),
                                      () async {
                                        FFAppState().tipoDePreco =
                                            'preco_por_pacote';
                                        FFAppState().valorCotacao =
                                            double.parse(_model
                                                .txtEMbalagemValorTextController
                                                .text);
                                        safeSetState(() {});
                                      },
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'R\$ ',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 32.0, 20.0, 12.0),
                                      suffixIcon: _model
                                              .txtEMbalagemValorTextController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model
                                                    .txtEMbalagemValorTextController
                                                    ?.clear();
                                                FFAppState().tipoDePreco =
                                                    'preco_por_pacote';
                                                FFAppState().valorCotacao =
                                                    double.parse(_model
                                                        .txtEMbalagemValorTextController
                                                        .text);
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
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.multiline,
                                    validator: _model
                                        .txtEMbalagemValorTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (!widget.cotadoUndBase!)
                    Text(
                      'Ou',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Visibility(
                      visible:
                          _model.txtEMbalagemValorTextController.text == '',
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Valor por ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                TextSpan(
                                  text: widget.undBase!,
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Container(
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: Container(
                                width: 100.0,
                                child: TextFormField(
                                  controller:
                                      _model.txtembalagemUndBaseTextController,
                                  focusNode:
                                      _model.txtembalagemUndBaseFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.txtembalagemUndBaseTextController',
                                    Duration(milliseconds: 20),
                                    () => safeSetState(() {}),
                                  ),
                                  onFieldSubmitted: (_) async {
                                    FFAppState().tipoDePreco =
                                        'preco_por_unidade_base';
                                    FFAppState().valorCotacao = double.parse(
                                        _model.txtembalagemUndBaseTextController
                                            .text);
                                    safeSetState(() {});
                                  },
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'R\$ ',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    suffixIcon: _model
                                            .txtembalagemUndBaseTextController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model
                                                  .txtembalagemUndBaseTextController
                                                  ?.clear();
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
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  textAlign: TextAlign.start,
                                  keyboardType: TextInputType.multiline,
                                  validator: _model
                                      .txtembalagemUndBaseTextControllerValidator
                                      .asValidator(context),
                                ),
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
    );
  }
}
