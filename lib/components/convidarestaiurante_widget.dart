import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'convidarestaiurante_model.dart';
export 'convidarestaiurante_model.dart';

class ConvidarestaiuranteWidget extends StatefulWidget {
  const ConvidarestaiuranteWidget({super.key});

  @override
  State<ConvidarestaiuranteWidget> createState() =>
      _ConvidarestaiuranteWidgetState();
}

class _ConvidarestaiuranteWidgetState extends State<ConvidarestaiuranteWidget> {
  late ConvidarestaiuranteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConvidarestaiuranteModel());

    _model.textFieldVendTextController ??= TextEditingController();
    _model.textFieldVendFocusNode ??= FocusNode();

    _model.textFieldEmpTextController ??= TextEditingController();
    _model.textFieldEmpFocusNode ??= FocusNode();

    _model.textFieldDDDTextController ??= TextEditingController();
    _model.textFieldDDDFocusNode ??= FocusNode();

    _model.textFieldZApTextController ??= TextEditingController();
    _model.textFieldZApFocusNode ??= FocusNode();

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
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
          child: TextFormField(
            controller: _model.textFieldVendTextController,
            focusNode: _model.textFieldVendFocusNode,
            autofocus: false,
            obscureText: false,
            decoration: InputDecoration(
              isDense: false,
              labelText: 'Seu Nome',
              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Satoshi',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Satoshi',
                    color: FlutterFlowTheme.of(context).textfiled,
                    fontSize: 17.0,
                    letterSpacing: 0.0,
                  ),
              errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
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
                  EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 16.0, 11.0),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Satoshi',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 17.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                ),
            cursorColor: FlutterFlowTheme.of(context).primary,
            validator: _model.textFieldVendTextControllerValidator
                .asValidator(context),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
          child: TextFormField(
            controller: _model.textFieldEmpTextController,
            focusNode: _model.textFieldEmpFocusNode,
            autofocus: false,
            obscureText: false,
            decoration: InputDecoration(
              isDense: false,
              labelText: 'Nome da empresa',
              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Satoshi',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 13.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Satoshi',
                    color: FlutterFlowTheme.of(context).textfiled,
                    fontSize: 17.0,
                    letterSpacing: 0.0,
                  ),
              errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
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
                  EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 16.0, 11.0),
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
                _model.textFieldEmpTextControllerValidator.asValidator(context),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: TextFormField(
                  controller: _model.textFieldDDDTextController,
                  focusNode: _model.textFieldDDDFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: false,
                    labelText: 'DDD',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).textfiled,
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
                        EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 16.0, 11.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  keyboardType: TextInputType.number,
                  cursorColor: FlutterFlowTheme.of(context).primary,
                  validator: _model.textFieldDDDTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 0.0, 0.0),
                child: TextFormField(
                  controller: _model.textFieldZApTextController,
                  focusNode: _model.textFieldZApFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: false,
                    labelText: 'Numero do whatsapp',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Satoshi',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                            ),
                    hintText: 'Whatsapp',
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).textfiled,
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
                        EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 16.0, 11.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  maxLength: 9,
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      null,
                  keyboardType: TextInputType.number,
                  cursorColor: FlutterFlowTheme.of(context).primary,
                  validator: _model.textFieldZApTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 48.0, 20.0, 24.0),
          child: FFButtonWidget(
            onPressed: () async {
              _model.apiResult71i =
                  await EdgeFunctionsGroup.convidarEmpresaPorVendedorCall.call(
                pNomeVendedor: _model.textFieldVendTextController.text,
                pNomeEmpresa: _model.textFieldEmpTextController.text,
                pDdd: _model.textFieldDDDTextController.text,
                pTelefone: _model.textFieldZApTextController.text,
              );

              if ((_model.apiResult71i?.succeeded ?? true)) {
                safeSetState(() {
                  _model.textFieldVendTextController?.clear();
                  _model.textFieldEmpTextController?.clear();
                  _model.textFieldDDDTextController?.clear();
                  _model.textFieldZApTextController?.clear();
                });
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Conviete enviado com sucesso!!!',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).success,
                  ),
                );
              }

              safeSetState(() {});
            },
            text: 'Enviar',
            options: FFButtonOptions(
              width: double.infinity,
              height: 56.0,
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 15.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Satoshi',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
    );
  }
}
