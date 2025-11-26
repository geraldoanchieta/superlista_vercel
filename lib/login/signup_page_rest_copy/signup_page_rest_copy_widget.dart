import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'signup_page_rest_copy_model.dart';
export 'signup_page_rest_copy_model.dart';

class SignupPageRestCopyWidget extends StatefulWidget {
  const SignupPageRestCopyWidget({super.key});

  static String routeName = 'SignupPageRestCopy';
  static String routePath = 'signupPageRestCopy';

  @override
  State<SignupPageRestCopyWidget> createState() =>
      _SignupPageRestCopyWidgetState();
}

class _SignupPageRestCopyWidgetState extends State<SignupPageRestCopyWidget>
    with TickerProviderStateMixin {
  late SignupPageRestCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupPageRestCopyModel());

    _model.textFieldddTextController ??= TextEditingController();
    _model.textFieldddFocusNode ??= FocusNode();

    _model.textFinumeroTextController ??= TextEditingController();
    _model.textFinumeroFocusNode ??= FocusNode();

    _model.txtEmailTextController ??= TextEditingController();
    _model.txtEmailFocusNode ??= FocusNode();

    _model.txtSenhaTextController ??= TextEditingController();
    _model.txtSenhaFocusNode ??= FocusNode();

    _model.textFieldconfirmTextController ??= TextEditingController();
    _model.textFieldconfirmFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 120.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'richTextOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 20.0),
                child: Text(
                  _model.convidado ? 'Fazer Cadastro' : 'Digite o seu telefone',
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineLargeFamily,
                        fontSize: 34.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        lineHeight: 1.5,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ),
              if (!_model.convidado)
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  controller: _model.textFieldddTextController,
                                  focusNode: _model.textFieldddFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textFieldddTextController',
                                    Duration(milliseconds: 100),
                                    () => safeSetState(() {}),
                                  ),
                                  autofocus: false,
                                  textInputAction: TextInputAction.done,
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
                                            16.0, 14.0, 16.0, 11.0),
                                    suffixIcon: _model
                                            .textFieldddTextController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textFieldddTextController
                                                  ?.clear();
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF696969),
                                              size: 22.0,
                                            ),
                                          )
                                        : null,
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
                                  maxLength: 2,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  buildCounter: (context,
                                          {required currentLength,
                                          required isFocused,
                                          maxLength}) =>
                                      null,
                                  keyboardType: TextInputType.number,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model
                                      .textFieldddTextControllerValidator
                                      .asValidator(context),
                                ).animateOnPageLoad(animationsMap[
                                    'textFieldOnPageLoadAnimation1']!),
                              ),
                              Expanded(
                                flex: 3,
                                child: TextFormField(
                                  controller: _model.textFinumeroTextController,
                                  focusNode: _model.textFinumeroFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textFinumeroTextController',
                                    Duration(milliseconds: 100),
                                    () => safeSetState(() {}),
                                  ),
                                  autofocus: false,
                                  textInputAction: TextInputAction.done,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    labelText: 'Número',
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
                                            16.0, 14.0, 16.0, 11.0),
                                    suffixIcon: _model
                                            .textFinumeroTextController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model.textFinumeroTextController
                                                  ?.clear();
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color: Color(0xFF696969),
                                              size: 22.0,
                                            ),
                                          )
                                        : null,
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
                                  maxLength: 9,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  buildCounter: (context,
                                          {required currentLength,
                                          required isFocused,
                                          maxLength}) =>
                                      null,
                                  keyboardType: TextInputType.number,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model
                                      .textFinumeroTextControllerValidator
                                      .asValidator(context),
                                ).animateOnPageLoad(animationsMap[
                                    'textFieldOnPageLoadAnimation2']!),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                        if ((_model.textFieldddTextController.text != '') &&
                            (_model.textFinumeroTextController.text != ''))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultrs3 = await EdgeFunctionsGroup
                                    .validarConvitePorTelefoneCall
                                    .call(
                                  pDdd: _model.textFieldddTextController.text,
                                  pTelefone:
                                      _model.textFinumeroTextController.text,
                                );

                                if ((_model.apiResultrs3?.succeeded ?? true)) {
                                  if (EdgeFunctionsGroup
                                      .validarConvitePorTelefoneCall
                                      .valido(
                                    (_model.apiResultrs3?.jsonBody ?? ''),
                                  )!) {
                                    _model.convidado = true;
                                    safeSetState(() {});
                                  }
                                } else {
                                  _model.recusado = true;
                                  safeSetState(() {});
                                }

                                safeSetState(() {});
                              },
                              text: 'Validar',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 56.0,
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
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        if (_model.recusado)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Text(
                              'Quase lá!!! estamos em faze final de testes  e em poucos dias já estaremos prontos. Pegamos o seu contato e logo que tudo estiver pronto vamos enviar um convite especialpara você. Obrigado !',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 18.0,
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
                  ),
                ),
              if (_model.convidado)
                Expanded(
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        20.0,
                        0,
                        24.0,
                      ),
                      primary: false,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (_model.falhou)
                                Flexible(
                                  child: Text(
                                    'Verifique se digitou o email corretamente!!!!',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 22.0,
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
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 26.0, 20.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtEmailTextController,
                            focusNode: _model.txtEmailFocusNode,
                            autofocus: false,
                            textInputAction: TextInputAction.next,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: false,
                              labelText: 'Digite seu email',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Email address',
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
                                  color:
                                      FlutterFlowTheme.of(context).borderColor,
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
                                  16.0, 14.0, 16.0, 11.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model.txtEmailTextControllerValidator
                                .asValidator(context),
                          ).animateOnPageLoad(
                              animationsMap['textFieldOnPageLoadAnimation3']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 26.0, 20.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtSenhaTextController,
                            focusNode: _model.txtSenhaFocusNode,
                            autofocus: false,
                            textInputAction: TextInputAction.done,
                            obscureText: !_model.txtSenhaVisibility,
                            decoration: InputDecoration(
                              isDense: false,
                              labelText: 'Senha',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Digite uma senha',
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
                                  color:
                                      FlutterFlowTheme.of(context).borderColor,
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
                                  16.0, 14.0, 16.0, 11.0),
                              suffixIcon: InkWell(
                                onTap: () => safeSetState(
                                  () => _model.txtSenhaVisibility =
                                      !_model.txtSenhaVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.txtSenhaVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF696969),
                                  size: 22.0,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model.txtSenhaTextControllerValidator
                                .asValidator(context),
                          ).animateOnPageLoad(
                              animationsMap['textFieldOnPageLoadAnimation4']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 26.0, 20.0, 0.0),
                          child: TextFormField(
                            controller: _model.textFieldconfirmTextController,
                            focusNode: _model.textFieldconfirmFocusNode,
                            autofocus: false,
                            textInputAction: TextInputAction.done,
                            obscureText: !_model.textFieldconfirmVisibility,
                            decoration: InputDecoration(
                              isDense: false,
                              labelText: 'Confirme sua senha',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Confirmar senha',
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
                                  color:
                                      FlutterFlowTheme.of(context).borderColor,
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
                                  16.0, 14.0, 16.0, 11.0),
                              suffixIcon: InkWell(
                                onTap: () => safeSetState(
                                  () => _model.textFieldconfirmVisibility =
                                      !_model.textFieldconfirmVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.textFieldconfirmVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF696969),
                                  size: 22.0,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model
                                .textFieldconfirmTextControllerValidator
                                .asValidator(context),
                          ).animateOnPageLoad(
                              animationsMap['textFieldOnPageLoadAnimation5']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 48.0, 20.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              if (_model.txtSenhaTextController.text ==
                                  _model.textFieldconfirmTextController.text) {
                                await Future.wait([
                                  Future(() async {
                                    GoRouter.of(context).prepareAuthEvent();
                                    if (_model.txtSenhaTextController.text !=
                                        _model.textFieldconfirmTextController
                                            .text) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Passwords don\'t match!',
                                          ),
                                        ),
                                      );
                                      return;
                                    }

                                    final user = await authManager
                                        .createAccountWithEmail(
                                      context,
                                      _model.txtEmailTextController.text,
                                      _model.txtSenhaTextController.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }
                                  }),
                                  Future(() async {
                                    _model.falhou = true;
                                    safeSetState(() {});

                                    context.pushNamedAuth(
                                        SignupPageFinishWidget.routeName,
                                        context.mounted);
                                  }),
                                ]);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'As senhas devem ser iguais!!!!!',
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
                            text: 'Criar',
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
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 44.0, 0.0, 48.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Ja tem uma conta?',
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
                                    ),
                                    TextSpan(
                                      text: ' Entrar',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
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
                                textAlign: TextAlign.center,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['richTextOnPageLoadAnimation']!),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
