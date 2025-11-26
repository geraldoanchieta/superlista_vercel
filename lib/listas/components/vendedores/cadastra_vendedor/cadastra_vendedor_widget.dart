import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'cadastra_vendedor_model.dart';
export 'cadastra_vendedor_model.dart';

class CadastraVendedorWidget extends StatefulWidget {
  const CadastraVendedorWidget({
    super.key,
    this.vendedor,
  });

  final VendedoresRow? vendedor;

  @override
  State<CadastraVendedorWidget> createState() => _CadastraVendedorWidgetState();
}

class _CadastraVendedorWidgetState extends State<CadastraVendedorWidget> {
  late CadastraVendedorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastraVendedorModel());

    _model.txtNomeTextController ??= TextEditingController(
        text: widget.vendedor != null ? widget.vendedor?.nome : '');
    _model.txtNomeFocusNode ??= FocusNode();

    _model.txtEmpresaTextController ??= TextEditingController(
        text: widget.vendedor != null ? widget.vendedor?.nomeEmpresa : '');
    _model.txtEmpresaFocusNode ??= FocusNode();

    _model.txtDDDTextController ??= TextEditingController(
        text: widget.vendedor != null ? widget.vendedor?.ddd : '');
    _model.txtDDDFocusNode ??= FocusNode();

    _model.txtNumeroTextController ??= TextEditingController(
        text:
            widget.vendedor != null ? widget.vendedor?.telefoneWhatsapp : '');
    _model.txtNumeroFocusNode ??= FocusNode();

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
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Cadastrar um vendedor',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 26.0, 20.0, 0.0),
                  child: TextFormField(
                    controller: _model.txtNomeTextController,
                    focusNode: _model.txtNomeFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: false,
                      labelText: 'Nome',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Satoshi',
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Nome deo vendedor',
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
                    validator: _model.txtNomeTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 26.0, 20.0, 0.0),
                  child: TextFormField(
                    controller: _model.txtEmpresaTextController,
                    focusNode: _model.txtEmpresaFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: false,
                      labelText: 'Empresa',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Satoshi',
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Empresa que ele trabalha',
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
                    validator: _model.txtEmpresaTextControllerValidator
                        .asValidator(context),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 26.0, 20.0, 0.0),
                        child: TextFormField(
                          controller: _model.txtDDDTextController,
                          focusNode: _model.txtDDDFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelText: 'DDD',
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
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 14.0, 0.0, 14.0),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.txtDDDTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 26.0, 20.0, 0.0),
                        child: TextFormField(
                          controller: _model.txtNumeroTextController,
                          focusNode: _model.txtNumeroFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelText: 'Telefone',
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
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 14.0, 0.0, 14.0),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                          keyboardType: TextInputType.number,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.txtNumeroTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 48.0, 20.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.formKey.currentState == null ||
                          !_model.formKey.currentState!.validate()) {
                        return;
                      }
                      if (widget.vendedor != null) {
                        await VendedoresTable().update(
                          data: {
                            'nome': _model.txtNomeTextController.text,
                            'telefone_whatsapp':
                                _model.txtNumeroTextController.text,
                            'ddd': _model.txtDDDTextController.text,
                            'nome_empresa':
                                _model.txtEmpresaTextController.text,
                          },
                          matchingRows: (rows) => rows.eqOrNull(
                            'id',
                            widget.vendedor?.id,
                          ),
                        );

                        context.pushNamed(HomeVendedorWidget.routeName);
                      } else {
                        _model.apiResultsdf =
                            await EdgeFunctionsGroup.convidarvendedorCall.call(
                          ddd: _model.txtDDDTextController.text,
                          telefone: _model.txtNumeroTextController.text,
                          empresa: _model.txtEmpresaTextController.text,
                          nome: _model.txtNomeTextController.text,
                          token: currentJwtToken,
                        );

                        if ((_model.apiResultsdf?.succeeded ?? true)) {
                          context.pushNamed(HomeRestauranteWidget.routeName);
                        }
                      }

                      safeSetState(() {});
                    },
                    text: widget.vendedor != null ? 'Alterar' : 'Criar',
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
