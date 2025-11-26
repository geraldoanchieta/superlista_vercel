import '/backend/supabase/supabase.dart';
import '/dialog_component/dilog_box/dilog_box_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bsdadosparapedidos_model.dart';
export 'bsdadosparapedidos_model.dart';

class BsdadosparapedidosWidget extends StatefulWidget {
  const BsdadosparapedidosWidget({
    super.key,
    this.restauranteVendedor,
  });

  final RestauranteVendedoresRow? restauranteVendedor;

  @override
  State<BsdadosparapedidosWidget> createState() =>
      _BsdadosparapedidosWidgetState();
}

class _BsdadosparapedidosWidgetState extends State<BsdadosparapedidosWidget> {
  late BsdadosparapedidosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsdadosparapedidosModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.diasDeEntrega =
          widget.restauranteVendedor!.diasEntregaPadrao.toList().cast<int>();
      safeSetState(() {});
    });

    _model.textFPrasoTextController ??= TextEditingController(
        text: widget.restauranteVendedor?.prazoPagamentoPadrao?.toString());
    _model.textFPrasoFocusNode ??= FocusNode();

    _model.textPedidominimoTextController ??= TextEditingController(
        text: widget.restauranteVendedor?.compraMinima?.toString());
    _model.textPedidominimoFocusNode ??= FocusNode();

    _model.textFObsTextController ??= TextEditingController(
        text: widget.restauranteVendedor?.observacoesEntrega);
    _model.textFObsFocusNode ??= FocusNode();

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
        height: MediaQuery.sizeOf(context).height * 1.517,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
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
                        'Detalhes para pedidos',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Satoshi',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
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
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.ddwtipoPagamentoValueController ??=
                              FormFieldController<String>(
                            _model.ddwtipoPagamentoValue ??= widget
                                .restauranteVendedor?.modalidadePagamentoPadrao,
                          ),
                          options: [
                            'Dinheiro',
                            'Boleto',
                            'Pix',
                            'Crédito',
                            'Débito'
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.ddwtipoPagamentoValue = val),
                          height: 40.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          hintText: 'Forma de pagamento',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                    if ((_model.ddwtipoPagamentoValue == 'Crédito') ||
                        (_model.ddwtipoPagamentoValue == 'Boleto'))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: TextFormField(
                          controller: _model.textFPrasoTextController,
                          focusNode: _model.textFPrasoFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textFPrasoTextController',
                            Duration(milliseconds: 500),
                            () => safeSetState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: _model.ddwtipoPagamentoValue == 'Crédito'
                                ? 'Quantas Vezes'
                                : (_model.ddwtipoPagamentoValue == 'Boleto'
                                    ? 'Quantos Dias'
                                    : 'a vista'),
                            hintText: _model.ddwtipoPagamentoValue == 'Crédito'
                                ? 'Parcelado em vezes?'
                                : (_model.ddwtipoPagamentoValue == 'Boleto'
                                    ? 'Quantos Dias para pagar'
                                    : 'a vista'),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
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
                            suffixIcon: _model
                                    .textFPrasoTextController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.textFPrasoTextController?.clear();
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
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.number,
                          validator: _model.textFPrasoTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Dias de entrega',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(48.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Builder(
                              builder: (context) {
                                if (!_model.diasDeEntrega.contains(7)) {
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.naoENtrega = true;
                                      _model.diasDeEntrega = [];
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.crop_square_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                  );
                                } else {
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.naoENtrega = false;
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.check_box_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                  );
                                }
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Não fazemos entregas',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
                  child: Wrap(
                    spacing: 16.0,
                    runSpacing: 16.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!_model.diasDeEntrega.contains(1)) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.addToDiasDeEntrega(1);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.crop_square_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              } else {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.removeFromDiasDeEntrega(1);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Segunda',
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
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!_model.diasDeEntrega.contains(2)) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.addToDiasDeEntrega(2);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.crop_square_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              } else {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.removeFromDiasDeEntrega(2);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Terça',
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
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!_model.diasDeEntrega.contains(3)) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.addToDiasDeEntrega(3);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.crop_square_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              } else {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.removeFromDiasDeEntrega(3);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Quarta',
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
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!_model.diasDeEntrega.contains(4)) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.addToDiasDeEntrega(4);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.crop_square_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              } else {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.removeFromDiasDeEntrega(4);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Quinta',
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
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!_model.diasDeEntrega.contains(5)) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.addToDiasDeEntrega(5);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.crop_square_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              } else {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.removeFromDiasDeEntrega(5);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Sexta',
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
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!_model.diasDeEntrega.contains(6)) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.addToDiasDeEntrega(6);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.crop_square_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              } else {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.removeFromDiasDeEntrega(6);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Sábado',
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
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Builder(
                            builder: (context) {
                              if (!_model.diasDeEntrega.contains(7)) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.addToDiasDeEntrega(7);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.crop_square_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              } else {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.removeFromDiasDeEntrega(7);
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.check_box_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Domigo',
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
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Material(
                          color: Colors.transparent,
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).alternate,
                            ),
                            child: CheckboxListTile(
                              value: _model.cBtofretegratisValue ??= false,
                              onChanged: (newValue) async {
                                safeSetState(() =>
                                    _model.cBtofretegratisValue = newValue!);
                              },
                              title: Text(
                                'Entrega Grátis',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleLargeIsCustom,
                                    ),
                              ),
                              subtitle: Text(
                                'Sua empresa oferece entrega gratúita',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelMediumIsCustom,
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.textPedidominimoTextController,
                            focusNode: _model.textPedidominimoFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textPedidominimoTextController',
                              Duration(milliseconds: 500),
                              () => safeSetState(() {}),
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Pedido mínimo',
                              hintText: 'Mínimo',
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
                              suffixIcon: _model.textPedidominimoTextController!
                                      .text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.textPedidominimoTextController
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
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            textAlign: TextAlign.start,
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            validator: _model
                                .textPedidominimoTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                  child: TextFormField(
                    controller: _model.textFObsTextController,
                    focusNode: _model.textFObsFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textFObsTextController',
                      Duration(milliseconds: 500),
                      () => safeSetState(() {}),
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Observações',
                      hintText:
                          'Digite aqui as observações como excessões de entrega valores de fretes ou qualquer observação referente ao pedido que seja pertinente',
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
                      suffixIcon: _model.textFObsTextController!.text.isNotEmpty
                          ? InkWell(
                              onTap: () async {
                                _model.textFObsTextController?.clear();
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
                    maxLines: 3,
                    keyboardType: TextInputType.number,
                    validator: _model.textFObsTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              if (_model.ddwtipoPagamentoValue == null) {
                                return;
                              }
                              if ((_model.diasDeEntrega.length > 0) &&
                                  !_model.naoENtrega) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Escolha pelo menos 1 dia de entrega',
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
                                if (_model.naoENtrega) {
                                  await RestauranteVendedoresTable().update(
                                    data: {
                                      'faz_entrega': false,
                                      'dias_entrega_padrao':
                                          _model.diasDeEntrega,
                                      'modalidade_pagamento_padrao':
                                          _model.ddwtipoPagamentoValue,
                                      'entrega_todos_dias':
                                          _model.diasDeEntrega.length >= 6,
                                      'observacoes_entrega':
                                          _model.textFObsTextController.text,
                                      'prazo_pagamento_padrao': int.tryParse(
                                          _model.textFPrasoTextController.text),
                                      'frete_gratuito':
                                          _model.cBtofretegratisValue,
                                      'compra_minima': double.tryParse(_model
                                          .textPedidominimoTextController.text),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      widget.restauranteVendedor?.id,
                                    ),
                                  );
                                } else {
                                  await RestauranteVendedoresTable().update(
                                    data: {
                                      'faz_entrega': true,
                                      'dias_entrega_padrao':
                                          _model.diasDeEntrega,
                                      'modalidade_pagamento_padrao':
                                          _model.ddwtipoPagamentoValue,
                                      'entrega_todos_dias':
                                          _model.diasDeEntrega.length >= 6,
                                      'observacoes_entrega':
                                          _model.textFObsTextController.text,
                                      'prazo_pagamento_padrao': int.tryParse(
                                          _model.textFPrasoTextController.text),
                                      'frete_gratuito':
                                          _model.cBtofretegratisValue,
                                      'compra_minima': double.tryParse(_model
                                          .textPedidominimoTextController.text),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      widget.restauranteVendedor?.id,
                                    ),
                                  );
                                }

                                Navigator.pop(context);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Escolha pelo menos 1 dia de entrega',
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
                              }
                            },
                            text: 'Atualisar',
                            options: FFButtonOptions(
                              width: 200.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleSmallIsCustom,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          if (widget.restauranteVendedor != null)
                            Builder(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: DilogBoxWidget(
                                          titulo: 'Desvincular da Empresa?',
                                          testo:
                                              'Tem certeza que deseja sa empresa das suas rede de contatos? Você só terá acesso novemento somente mediate novo convite.',
                                          confima: 'Sim',
                                          recusa: 'Não',
                                          actionConfirm: () async {
                                            await RestauranteVendedoresTable()
                                                .delete(
                                              matchingRows: (rows) =>
                                                  rows.eqOrNull(
                                                'id',
                                                widget.restauranteVendedor?.id,
                                              ),
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Empresa excluida com sucesso!!',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                            Navigator.pop(context);
                                            Navigator.pop(context);
                                          },
                                          actionRecusa: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                                text: 'Excluir',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                        ].divide(SizedBox(height: 22.0)),
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
