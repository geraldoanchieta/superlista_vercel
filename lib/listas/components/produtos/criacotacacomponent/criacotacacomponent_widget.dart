import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/icone_tutorial_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'criacotacacomponent_model.dart';
export 'criacotacacomponent_model.dart';

class CriacotacacomponentWidget extends StatefulWidget {
  const CriacotacacomponentWidget({
    super.key,
    required this.itemcotacao,
    required this.tipodeunidade,
  });

  final VwItensParaCotarRow? itemcotacao;
  final String? tipodeunidade;

  @override
  State<CriacotacacomponentWidget> createState() =>
      _CriacotacacomponentWidgetState();
}

class _CriacotacacomponentWidgetState extends State<CriacotacacomponentWidget> {
  late CriacotacacomponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriacotacacomponentModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.tfQuantMinTextController ??= TextEditingController();
    _model.tfQuantMinFocusNode ??= FocusNode();

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
        Expanded(
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                0,
                16.0,
                0,
                0,
              ),
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController1',
                      Duration(milliseconds: 300),
                      () async {
                        _model.evolucao = 2;
                        safeSetState(() {});
                      },
                    ),
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: false,
                      labelText: 'Marca',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Satoshi',
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Digite apenas o nome da marca',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Satoshi',
                                color: Color(0xFF696969),
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                              ),
                      errorStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).error,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                lineHeight: 1.2,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).borderColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 0.0, 14.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Satoshi',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController2',
                      Duration(milliseconds: 300),
                      () async {
                        _model.evolucao = 2;
                        safeSetState(() {});
                      },
                    ),
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: false,
                      labelText: 'Observaçnoes  (opcional)',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Satoshi',
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                              ),
                      hintText:
                          'Especificações do produto que vc julgar relevante Ex: embalado a vácuo....',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Satoshi',
                                color: Color(0xFF696969),
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                              ),
                      errorStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).error,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                lineHeight: 1.2,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).borderColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 0.0, 14.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Satoshi',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    maxLines: 2,
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
                if (_model.evolucao! > 1)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            wrapWithModel(
                              model: _model.iconeTutorialModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: IconeTutorialWidget(
                                tutorial: 'Vendas',
                                ordem: 5,
                                nome: ' Embalagens ',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.iconeTutorialModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: IconeTutorialWidget(
                                tutorial: 'Vendas',
                                ordem: 6,
                                nome: 'Por Unidades',
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: _model.undBaseSelel == 1
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).lightGray,
                              width: _model.undBaseSelel == 1 ? 2.0 : 0.0,
                            ),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.evolucao = 3;
                              _model.undBase = false;
                              _model.undBaseSelel = 1;
                              safeSetState(() {});
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/embalagens_template.png',
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Este produto possui  Volume  fixo de embalagem EX: 500g, 2Kg, 900mL',
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: _model.undBaseSelel == 2
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).lightGray,
                              width: _model.undBaseSelel == 2 ? 2.0 : 0.0,
                            ),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.evolucao = 5;
                              _model.undBaseSelel = 2;
                              _model.undBase = true;
                              _model.tipoDeValor = 'preco_por_unidade_base';
                              safeSetState(() {});
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/unidade_basses_template.png',
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Este Item  e vendido em quantidades variadas e cotado em  Kg, L, M',
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 16.0))
                          .addToStart(SizedBox(height: 20.0))
                          .addToEnd(SizedBox(height: 20.0)),
                    ),
                  ),
                if (!_model.undBase! && (_model.evolucao! > 2))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                'Qual o tipo de embalagem desse produto',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 1,
                              child: FlutterFlowDropDown<String>(
                                controller: _model.ddwtipoValueController ??=
                                    FormFieldController<String>(null),
                                options: FFAppState()
                                    .tiposDeEMbalagem
                                    .sortedList(keyOf: (e) => e, desc: false),
                                onChanged: (val) async {
                                  safeSetState(() => _model.ddwtipoValue = val);
                                  _model.evolucao = 4;
                                  safeSetState(() {});
                                },
                                width: 200.0,
                                height: 50.0,
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
                                hintText: 'Unidade',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                elevation: 2.0,
                                borderColor: Color(0xFFDBDBDB),
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                          ].divide(SizedBox(width: 24.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                if (!_model.undBase! && (_model.evolucao! > 3))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                'Qual é o volume da embalagem desse produto',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                controller: _model.textController3,
                                focusNode: _model.textFieldFocusNode3,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController3',
                                  Duration(milliseconds: 2000),
                                  () async {
                                    if (_model.ddwtipoValue != null &&
                                        _model.ddwtipoValue != '') {
                                      _model.evolucao = 5;
                                      safeSetState(() {});
                                    }
                                  },
                                ),
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  labelText: 'Quantidade da embalagem',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Ex 500',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: Color(0xFF696969),
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                      ),
                                  errorStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        lineHeight: 1.2,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .borderColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 14.0, 0.0, 14.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model.textController3Validator
                                    .asValidator(context),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: FlutterFlowDropDown<String>(
                                controller: _model.ddwundValueController ??=
                                    FormFieldController<String>(null),
                                options: FFAppState()
                                    .unidades
                                    .where((e) =>
                                        e.tipoMedida ==
                                        FFAppState()
                                            .unidades
                                            .where((e) =>
                                                e.id ==
                                                widget
                                                    .itemcotacao?.unidadeBaseId)
                                            .toList()
                                            .firstOrNull
                                            ?.tipoMedida)
                                    .toList()
                                    .map((e) => e.simbolo)
                                    .toList(),
                                onChanged: (val) async {
                                  safeSetState(() => _model.ddwundValue = val);
                                  if (_model.textController3.text != '') {
                                    _model.evolucao = 5;
                                    safeSetState(() {});
                                  }
                                },
                                width: 200.0,
                                height: 50.0,
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
                                hintText: 'Unidade',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                elevation: 2.0,
                                borderColor: Color(0xFFDBDBDB),
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                          ].divide(SizedBox(width: 24.0)),
                        ),
                      ]
                          .divide(SizedBox(height: 16.0))
                          .addToStart(SizedBox(height: 16.0)),
                    ),
                  ),
                Container(
                  decoration: BoxDecoration(),
                ),
                if (_model.evolucao! > 4)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Text(
                                _model.undBase!
                                    ? 'Informe o valor do produto'
                                    : 'Qual preço você quer informar ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        if (!_model.undBase!)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!_model.undBase!) {
                                      _model.tipoDeValor = 'preco_por_pacote';
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width: 160.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: _model.tipoDeValor ==
                                                'preco_por_pacote'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Valor de ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                _model.textController3.text,
                                                '100',
                                              ),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                _model.ddwundValue,
                                                'und',
                                              ),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
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
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.tipoDeValor =
                                        'preco_por_unidade_base';
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 160.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: _model.tipoDeValor ==
                                                'preco_por_unidade_base'
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Valor do ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                widget.itemcotacao
                                                    ?.unidadeBaseSimbolo,
                                                'un',
                                              ),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
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
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (_model.tipoDeValor != null &&
                                _model.tipoDeValor != '')
                              Expanded(
                                child: TextFormField(
                                  controller: _model.textController4,
                                  focusNode: _model.textFieldFocusNode4,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController4',
                                    Duration(milliseconds: 500),
                                    () async {
                                      _model.evolucao = 6;
                                      safeSetState(() {});
                                    },
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    labelText: 'Valor ',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'R\$ ',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: Color(0xFF696969),
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                        ),
                                    errorStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          lineHeight: 1.2,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .borderColor,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 14.0, 0.0, 14.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model.textController4Validator
                                      .asValidator(context),
                                ),
                              ),
                          ],
                        ),
                      ]
                          .divide(SizedBox(height: 16.0))
                          .addToStart(SizedBox(height: 16.0))
                          .addToEnd(SizedBox(height: 16.0)),
                    ),
                  ),
                if (_model.evolucao == 6)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Builder(
                                builder: (context) {
                                  if (_model.undBase ?? false) {
                                    return RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Você vende ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: '1 ',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              widget.itemcotacao
                                                  ?.unidadeBaseSimbolo,
                                              'un',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' deste produto',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    );
                                  } else {
                                    return RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Você vende ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: '1 ',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' unidade de ',
                                            style: TextStyle(),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.textController3.text,
                                              '500',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.ddwundValue,
                                              'und',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' deste produto',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 16.0,
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
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 60.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.undBase!) {
                                      _model.apiResult3io =
                                          await FuncoesRpcGroup
                                              .criaNovoItemCotacaoCall
                                              .call(
                                        pItemSolicitadoId: widget
                                            .itemcotacao?.itemSolicitadoId,
                                        pPrecoInformado:
                                            functions.texttToDouble(
                                                _model.textController4.text),
                                        pTipoPrecoInformado: _model.tipoDeValor,
                                        pProdutoMasterId: widget
                                            .itemcotacao?.produtoMasterId,
                                        pNomeEspecifico:
                                            widget.itemcotacao?.nomeProduto,
                                        pMarca: _model.textController1.text,
                                        pEmbalagemPrimQtd: 1.0,
                                        pEmbalagemPrimUnidId: FFAppState()
                                            .unidades
                                            .where((e) =>
                                                e.id ==
                                                widget
                                                    .itemcotacao?.unidadeBaseId)
                                            .toList()
                                            .firstOrNull
                                            ?.id,
                                        pCotadoPorUnidadeBase: _model.undBase,
                                        pEmbalagemSecDesc:
                                            valueOrDefault<String>(
                                          _model.ddwembSecValue,
                                          'Unidades',
                                        ),
                                        pEmbalagemSecQtd: 1.0,
                                        pVolumeMinimoVenda: 1.0,
                                        token: currentJwtToken,
                                        pCotacaoId: FFAppState().cotacao.id,
                                        pObservacoes:
                                            _model.textController2.text,
                                      );

                                      if ((_model.apiResult3io?.succeeded ??
                                          true)) {
                                        FFAppState().addToProdutocotado(
                                            ProdutoCotadoStruct(
                                          itemSolicitacaoId: widget
                                              .itemcotacao?.itemSolicitadoId,
                                          itemCotacaoId: FuncoesRpcGroup
                                              .criaNovoItemCotacaoCall
                                              .itemCotacao(
                                            (_model.apiResult3io?.jsonBody ??
                                                ''),
                                          ),
                                        ));
                                        FFAppState().atualisacriacao = true;
                                        safeSetState(() {});
                                        Navigator.pop(context);
                                      }
                                    } else {
                                      _model.apiResult3ez =
                                          await FuncoesRpcGroup
                                              .criaNovoItemCotacaoCall
                                              .call(
                                        pItemSolicitadoId: widget
                                            .itemcotacao?.itemSolicitadoId,
                                        pPrecoInformado:
                                            functions.texttToDouble(
                                                _model.textController4.text),
                                        pTipoPrecoInformado: _model.tipoDeValor,
                                        pProdutoMasterId: widget
                                            .itemcotacao?.produtoMasterId,
                                        pNomeEspecifico:
                                            widget.itemcotacao?.nomeProduto,
                                        pMarca: _model.textController1.text,
                                        pEmbalagemPrimDesc: _model.ddwtipoValue,
                                        pEmbalagemPrimQtd:
                                            functions.texttToDouble(
                                                _model.textController3.text),
                                        pEmbalagemPrimUnidId: FFAppState()
                                            .unidades
                                            .where((e) =>
                                                e.simbolo == _model.ddwundValue)
                                            .toList()
                                            .firstOrNull
                                            ?.id,
                                        pCotadoPorUnidadeBase: _model.undBase,
                                        pEmbalagemSecDesc:
                                            valueOrDefault<String>(
                                          _model.ddwembSecValue,
                                          'Unidades',
                                        ),
                                        pEmbalagemSecQtd: 1.0,
                                        pVolumeMinimoVenda: 1.0,
                                        token: currentJwtToken,
                                        pCotacaoId: FFAppState().cotacao.id,
                                        pObservacoes:
                                            _model.textController2.text,
                                      );

                                      if ((_model.apiResult3ez?.succeeded ??
                                          true)) {
                                        FFAppState().addToProdutocotado(
                                            ProdutoCotadoStruct(
                                          itemSolicitacaoId: widget
                                              .itemcotacao?.itemSolicitadoId,
                                          itemCotacaoId: FuncoesRpcGroup
                                              .criaNovoItemCotacaoCall
                                              .itemCotacao(
                                            (_model.apiResult3ez?.jsonBody ??
                                                ''),
                                          ),
                                        ));
                                        FFAppState().atualisacriacao = true;
                                        safeSetState(() {});
                                        Navigator.pop(context);
                                      }
                                    }

                                    safeSetState(() {});
                                  },
                                  text: 'Sim',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 56.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 15.0, 12.0, 15.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.evolucao = 7;
                                    safeSetState(() {});
                                  },
                                  text: 'Não',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 56.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 15.0, 12.0, 15.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Satoshi',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 24.0)),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                if (_model.evolucao! > 6)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Builder(
                                builder: (context) {
                                  if (_model.undBase ?? false) {
                                    return RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Qual o mínimo de ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              widget.itemcotacao
                                                  ?.unidadeBaseSimbolo,
                                              'un',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' deste produto que você vende?',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    );
                                  } else {
                                    return RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Qual o mínimo de unidades de  ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.textController3.text,
                                              '200',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              _model.ddwundValue,
                                              'und',
                                            ),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' que você vende ?',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 16.0,
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
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.tfQuantMinTextController,
                                focusNode: _model.tfQuantMinFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.tfQuantMinTextController',
                                  Duration(milliseconds: 500),
                                  () => safeSetState(() {}),
                                ),
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  labelText: 'Compra Mínima',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: Color(0xFF696969),
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                      ),
                                  errorStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        lineHeight: 1.2,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .borderColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 14.0, 0.0, 14.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                keyboardType: TextInputType.number,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model
                                    .tfQuantMinTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ].divide(SizedBox(width: 24.0)),
                        ),
                        if (_model.tfQuantMinTextController.text != '')
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Builder(
                                  builder: (context) {
                                    if (_model.undBase ?? false) {
                                      return RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Como esses ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                _model.tfQuantMinTextController
                                                    .text,
                                                '0',
                                              ),
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text: ' ',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                    .unidades
                                                    .where((e) =>
                                                        e.tipoMedida ==
                                                        widget.tipodeunidade)
                                                    .toList()
                                                    .firstOrNull
                                                    ?.simbolo,
                                                'un',
                                              ),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' São embaladas para venda?',
                                              style: TextStyle(),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      );
                                    } else {
                                      return RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'como essas  ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: '',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                _model.tfQuantMinTextController
                                                    .text,
                                                '12',
                                              ),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' Unidades  sao embaladas?',
                                              style: TextStyle(),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        if (_model.tfQuantMinTextController.text != '')
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 1,
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.ddwembSecValueController ??=
                                          FormFieldController<String>(
                                    _model.ddwembSecValue ??= 'Unidades',
                                  ),
                                  options: [
                                    'Unidades',
                                    'Caixa',
                                    'Fardo',
                                    'Pacote'
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.ddwembSecValue = val),
                                  width: 200.0,
                                  height: 50.0,
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
                                  hintText: 'Unidade',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  elevation: 2.0,
                                  borderColor: Color(0xFFDBDBDB),
                                  borderWidth: 1.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ],
                          ),
                      ]
                          .divide(SizedBox(height: 16.0))
                          .addToStart(SizedBox(height: 16.0)),
                    ),
                  ),
                if (_model.evolucao! > 6)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 48.0, 20.0, 60.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.undBase!) {
                          _model.apiResultkio = await FuncoesRpcGroup
                              .criaNovoItemCotacaoCall
                              .call(
                            pItemSolicitadoId:
                                widget.itemcotacao?.itemSolicitadoId,
                            pPrecoInformado: functions
                                .texttToDouble(_model.textController4.text),
                            pTipoPrecoInformado: _model.tipoDeValor,
                            pProdutoMasterId:
                                widget.itemcotacao?.produtoMasterId,
                            pNomeEspecifico: widget.itemcotacao?.nomeProduto,
                            pMarca: _model.textController1.text,
                            pEmbalagemPrimQtd: 1.0,
                            pEmbalagemPrimUnidId: FFAppState()
                                .unidades
                                .where((e) =>
                                    e.id == widget.itemcotacao?.unidadeBaseId)
                                .toList()
                                .firstOrNull
                                ?.id,
                            pCotadoPorUnidadeBase: _model.undBase,
                            pEmbalagemSecDesc: valueOrDefault<String>(
                              _model.ddwembSecValue,
                              'Unidades',
                            ),
                            pEmbalagemSecQtd: functions.texttToDouble(
                                _model.tfQuantMinTextController.text),
                            pVolumeMinimoVenda: functions.texttToDouble(
                                _model.tfQuantMinTextController.text),
                            token: currentJwtToken,
                            pCotacaoId: FFAppState().cotacao.id,
                            pObservacoes: _model.textController2.text,
                          );

                          if ((_model.apiResultkio?.succeeded ?? true)) {
                            FFAppState().addToProdutocotado(ProdutoCotadoStruct(
                              itemSolicitacaoId:
                                  widget.itemcotacao?.itemSolicitadoId,
                              itemCotacaoId: FuncoesRpcGroup
                                  .criaNovoItemCotacaoCall
                                  .itemCotacao(
                                (_model.apiResultkio?.jsonBody ?? ''),
                              ),
                            ));
                            FFAppState().atualisacriacao = true;
                            safeSetState(() {});
                            Navigator.pop(context);
                          }
                        } else {
                          _model.apiResult3ezCopy = await FuncoesRpcGroup
                              .criaNovoItemCotacaoCall
                              .call(
                            pItemSolicitadoId:
                                widget.itemcotacao?.itemSolicitadoId,
                            pPrecoInformado:
                                double.tryParse(_model.textController4.text),
                            pTipoPrecoInformado: _model.tipoDeValor,
                            pProdutoMasterId:
                                widget.itemcotacao?.produtoMasterId,
                            pNomeEspecifico: widget.itemcotacao?.nomeProduto,
                            pMarca: _model.textController1.text,
                            pEmbalagemPrimDesc: _model.ddwtipoValue,
                            pEmbalagemPrimQtd:
                                double.tryParse(_model.textController3.text),
                            pEmbalagemPrimUnidId: FFAppState()
                                .unidades
                                .where((e) => e.simbolo == _model.ddwundValue)
                                .toList()
                                .firstOrNull
                                ?.id,
                            pCotadoPorUnidadeBase: _model.undBase,
                            pEmbalagemSecDesc: valueOrDefault<String>(
                              _model.ddwembSecValue,
                              'Unidades',
                            ),
                            pEmbalagemSecQtd: double.tryParse(
                                _model.tfQuantMinTextController.text),
                            pVolumeMinimoVenda: double.tryParse(
                                _model.tfQuantMinTextController.text),
                            token: currentJwtToken,
                            pCotacaoId: FFAppState().cotacao.id,
                            pObservacoes: _model.textController2.text,
                          );

                          if ((_model.apiResult3ezCopy?.succeeded ?? true)) {
                            FFAppState().addToProdutocotado(ProdutoCotadoStruct(
                              itemSolicitacaoId:
                                  widget.itemcotacao?.itemSolicitadoId,
                              itemCotacaoId: FuncoesRpcGroup
                                  .criaNovoItemCotacaoCall
                                  .itemCotacao(
                                (_model.apiResult3ezCopy?.jsonBody ?? ''),
                              ),
                            ));
                            FFAppState().atualisacriacao = true;
                            safeSetState(() {});
                            Navigator.pop(context);
                          }
                        }

                        safeSetState(() {});
                      },
                      text: 'Criar',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 56.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 15.0, 12.0, 15.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Satoshi',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
