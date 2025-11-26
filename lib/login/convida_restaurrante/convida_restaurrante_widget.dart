import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'convida_restaurrante_model.dart';
export 'convida_restaurrante_model.dart';

class ConvidaRestaurranteWidget extends StatefulWidget {
  const ConvidaRestaurranteWidget({super.key});

  static String routeName = 'convidaRestaurrante';
  static String routePath = 'convidaRestaurrante';

  @override
  State<ConvidaRestaurranteWidget> createState() =>
      _ConvidaRestaurranteWidgetState();
}

class _ConvidaRestaurranteWidgetState extends State<ConvidaRestaurranteWidget>
    with TickerProviderStateMixin {
  late ConvidaRestaurranteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConvidaRestaurranteModel());

    _model.textFinempresaTextController ??= TextEditingController();
    _model.textFinempresaFocusNode ??= FocusNode();

    _model.textFieldddTextController ??= TextEditingController();
    _model.textFieldddFocusNode ??= FocusNode();

    _model.textFinumeroTextController ??= TextEditingController();
    _model.textFinumeroFocusNode ??= FocusNode();

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
              wrapWithModel(
                model: _model.commonAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CommonAppBarWidget(
                  name: 'Convite',
                  color: false,
                  iconExtra: false,
                  novaacao: () async {
                    context.safePop();
                  },
                  actionicon: () async {},
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 20.0),
                child: Text(
                  'Convidar resturante',
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
                        TextFormField(
                          controller: _model.textFinempresaTextController,
                          focusNode: _model.textFinempresaFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textFinempresaTextController',
                            Duration(milliseconds: 100),
                            () => safeSetState(() {}),
                          ),
                          autofocus: false,
                          textInputAction: TextInputAction.done,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelText: 'Empresa',
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
                                16.0, 14.0, 16.0, 11.0),
                            suffixIcon: _model.textFinempresaTextController!
                                    .text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.textFinempresaTextController
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
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                          maxLength: 9,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          keyboardType: TextInputType.number,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model
                              .textFinempresaTextControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation1']!),
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
                                    'textFieldOnPageLoadAnimation2']!),
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
                                    'textFieldOnPageLoadAnimation3']!),
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
                                _model.apiResultrs31 = await FuncoesRpcGroup
                                    .criarConviteBetaCall
                                    .call(
                                  pDdd: _model.textFieldddTextController.text,
                                  pTelefone:
                                      _model.textFinumeroTextController.text,
                                  pNomeDestinatario:
                                      _model.textFinempresaTextController.text,
                                  token: currentJwtToken,
                                );

                                if ((_model.apiResultrs31?.succeeded ?? true)) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Convite criado com sucesso',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: FutureBuilder<List<ConvitesBetaRow>>(
                            future: (_model.requestCompleter ??=
                                    Completer<List<ConvitesBetaRow>>()
                                      ..complete(ConvitesBetaTable().queryRows(
                                        queryFn: (q) => q.eqOrNull(
                                          'usado',
                                          false,
                                        ),
                                      )))
                                .future,
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<ConvitesBetaRow>
                                  listViewConvitesBetaRowList = snapshot.data!;

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewConvitesBetaRowList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 8.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewConvitesBetaRow =
                                      listViewConvitesBetaRowList[
                                          listViewIndex];
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              listViewConvitesBetaRow
                                                  .nomeDestinatario,
                                              'Nome',
                                            ),
                                            style: FlutterFlowTheme.of(context)
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
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              listViewConvitesBetaRow.chatId,
                                              'niumerpo',
                                            ),
                                            style: FlutterFlowTheme.of(context)
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
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await ConvitesBetaTable().delete(
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              listViewConvitesBetaRow.id,
                                            ),
                                          );
                                          safeSetState(() =>
                                              _model.requestCompleter = null);
                                          await _model
                                              .waitForRequestCompleted();
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.trashAlt,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 12.0)),
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
