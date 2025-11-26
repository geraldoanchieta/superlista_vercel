import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'bs_edita_produto_pai_model.dart';
export 'bs_edita_produto_pai_model.dart';

class BsEditaProdutoPaiWidget extends StatefulWidget {
  const BsEditaProdutoPaiWidget({
    super.key,
    this.produto,
    this.categoria,
    this.unidade,
  });

  final ProdutosMasterRow? produto;
  final String? categoria;
  final String? unidade;

  @override
  State<BsEditaProdutoPaiWidget> createState() =>
      _BsEditaProdutoPaiWidgetState();
}

class _BsEditaProdutoPaiWidgetState extends State<BsEditaProdutoPaiWidget> {
  late BsEditaProdutoPaiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsEditaProdutoPaiModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.produto != null) {
        _model.categoria = valueOrDefault<String>(
          FFAppState()
              .categorias
              .where((e) => e.id == widget.produto?.categoriaId)
              .toList()
              .firstOrNull
              ?.nome,
          'categoria',
        );
        _model.unidade = valueOrDefault<String>(
          FFAppState()
              .unidades
              .where((e) => e.id == widget.produto?.unidadeBaseId)
              .toList()
              .firstOrNull
              ?.simbolo,
          'und',
        );
        safeSetState(() {});
      }
    });

    _model.txtNomeTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.produto?.nome,
      'nome',
    ));
    _model.txtNomeFocusNode ??= FocusNode();

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
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 12.0),
                        child: Text(
                          'Produto Master',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineMediumIsCustom,
                              ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: TextFormField(
                      controller: _model.txtNomeTextController,
                      focusNode: _model.txtNomeFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nome do produto',
                        hintText: 'Escolha o nome para esta lista',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
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
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.multiline,
                      validator: _model.txtNomeTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(
                          builder: (context) {
                            if (_model.alteraCat || (widget.produto == null)) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 16.0, 20.0, 0.0),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.dropDownCatValueController ??=
                                          FormFieldController<String>(null),
                                  options: FFAppState()
                                      .categorias
                                      .map((e) => e.nome)
                                      .toList()
                                      .sortedList(keyOf: (e) => e, desc: false),
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownCatValue = val),
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  hintText: 'Categoria',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
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
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 0.0, 12.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    _model.categoria,
                                    'cat',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineMediumFamily,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineMediumIsCustom,
                                      ),
                                ),
                              );
                            }
                          },
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.alteraCat = !_model.alteraCat;
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.edit_sharp,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lightGray,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  64.0, 16.0, 64.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Builder(
                                      builder: (context) {
                                        if (_model.alteraUnd ||
                                            (widget.produto == null)) {
                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController ??=
                                                FormFieldController<String>(
                                              _model.dropDownValue ??=
                                                  valueOrDefault<String>(
                                                _model.unidade,
                                                'un',
                                              ),
                                            ),
                                            options: FFAppState()
                                                .unidades
                                                .map((e) => e.simbolo)
                                                .toList(),
                                            onChanged: (val) async {
                                              safeSetState(() =>
                                                  _model.dropDownValue = val);
                                              _model.unidade =
                                                  _model.dropDownValue;
                                              safeSetState(() {});
                                            },
                                            height: 40.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                            hintText: 'Unidade',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor: Colors.transparent,
                                            borderWidth: 0.0,
                                            borderRadius: 8.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          );
                                        } else {
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 0.0, 12.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.unidade,
                                                'un',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    fontFamily: FlutterFlowTheme
                                                            .of(context)
                                                        .headlineMediumFamily,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMediumIsCustom,
                                                  ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.alteraUnd = !_model.alteraUnd;
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.edit_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 35.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (_model.unidade != null &&
                                      _model.unidade != '') {
                                    await ProdutosMasterTable().update(
                                      data: {
                                        'nome':
                                            _model.txtNomeTextController.text,
                                        'categoria_id':
                                            widget.produto?.categoriaId,
                                        'unidade_base_id':
                                            widget.produto?.unidadeBaseId,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        widget.produto?.id,
                                      ),
                                    );
                                    Navigator.pop(context);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Escolha a unidade!!!!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  }
                                },
                                text: 'Editar',
                                options: FFButtonOptions(
                                  width: 270.0,
                                  height: 59.9,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
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
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
