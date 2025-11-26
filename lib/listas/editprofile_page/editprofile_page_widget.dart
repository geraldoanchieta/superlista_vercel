import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'editprofile_page_model.dart';
export 'editprofile_page_model.dart';

class EditprofilePageWidget extends StatefulWidget {
  const EditprofilePageWidget({
    super.key,
    this.info,
  });

  final VwPerfilCompletoUtilizadorRow? info;

  static String routeName = 'EditprofilePage';
  static String routePath = 'editprofilePage';

  @override
  State<EditprofilePageWidget> createState() => _EditprofilePageWidgetState();
}

class _EditprofilePageWidgetState extends State<EditprofilePageWidget> {
  late EditprofilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditprofilePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.foto = valueOrDefault<String>(
        FFAppState().isRestaurante
            ? FFAppState().profile.fotoUrl
            : FFAppState().vendedroe.fotoUrl,
        'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/Design_sem_nome_(3).png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL0Rlc2lnbl9zZW1fbm9tZV8oMykucG5nIiwiaWF0IjoxNzUzNDY0MTYxLCJleHAiOjUyNTM5NjAxNjF9.GV_K8SjtL3G4Y5A4ai36tNVhGnnpMKJLrQ_EgtbeVJM',
      );
      safeSetState(() {});
    });

    _model.textController1 ??= TextEditingController(
        text: FFAppState().isRestaurante
            ? FFAppState().profile.nomeCompleto
            : FFAppState().vendedroe.nome);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(
        text: FFAppState().isRestaurante
            ? valueOrDefault<String>(
                widget.info?.email,
                'Nâp tem',
              )
            : FFAppState().vendedroe.nomeEmpresa);
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.tFDddTextController ??= TextEditingController(
        text: FFAppState().isRestaurante
            ? FFAppState().profile.ddd
            : FFAppState().vendedroe.ddd);
    _model.tFDddFocusNode ??= FocusNode();

    _model.tfTelefoneTextController ??= TextEditingController(
        text: FFAppState().isRestaurante
            ? FFAppState().profile.telefone
            : FFAppState().vendedroe.telefoneWhatsapp);
    _model.tfTelefoneFocusNode ??= FocusNode();

    _model.textFieldFantasiaTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.info?.nomeFantasia,
      'Nâo Informada',
    ));
    _model.textFieldFantasiaFocusNode ??= FocusNode();

    _model.txtAdmTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.info?.nomeCompleto,
      'Nâo Informada',
    ));
    _model.txtAdmFocusNode ??= FocusNode();

    _model.txtDDDTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.info?.ddd,
      'Nâo Informada',
    ));
    _model.txtDDDFocusNode ??= FocusNode();

    _model.txtNumeroTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.info?.telefone,
      'Nâo Informada',
    ));
    _model.txtNumeroFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).lightGray,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: wrapWithModel(
                  model: _model.commonAppBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CommonAppBarWidget(
                    name: 'Edit profile',
                    novaacao: () async {
                      context.safePop();
                    },
                    actionicon: () async {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      16.0,
                      0,
                      12.0,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional(1.0, 1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().isRestaurante
                                        ? valueOrDefault<String>(
                                            FFAppState().restaurante.logoUrl,
                                            'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/public/varanda/Design_sem_nome_(3).png',
                                          )
                                        : FFAppState().vendedroe.fotoUrl,
                                    'https://tcwsrmqppljuhzuxwkyw.supabase.co/storage/v1/object/sign/varanda/Design_sem_nome_(3).png?token=eyJraWQiOiJzdG9yYWdlLXVybC1zaWduaW5nLWtleV9iYzU0NGZlZC03MTliLTQyNmYtYjBlOS0yZDI2M2QyMWFhYmQiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJ2YXJhbmRhL0Rlc2lnbl9zZW1fbm9tZV8oMykucG5nIiwiaWF0IjoxNzUzNDY0MTYxLCJleHAiOjUyNTM5NjAxNjF9.GV_K8SjtL3G4Y5A4ai36tNVhGnnpMKJLrQ_EgtbeVJM',
                                  ),
                                  width: 80.0,
                                  height: 80.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    storageFolderPath: 'fotos_perfil',
                                    imageQuality: 42,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    safeSetState(() => _model
                                        .isDataUploading_uploadDataT2x = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                                originalFilename:
                                                    m.originalFilename,
                                              ))
                                          .toList();

                                      downloadUrls =
                                          await uploadSupabaseStorageFiles(
                                        bucketName: 'usuarios',
                                        selectedFiles: selectedMedia,
                                      );
                                    } finally {
                                      _model.isDataUploading_uploadDataT2x =
                                          false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      safeSetState(() {
                                        _model.uploadedLocalFile_uploadDataT2x =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl_uploadDataT2x =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      safeSetState(() {});
                                      return;
                                    }
                                  }

                                  _model.foto =
                                      _model.uploadedFileUrl_uploadDataT2x;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 38.0,
                                  height: 38.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/camera.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFAppState().isRestaurante
                                      ? FFAppState().profile.nomeCompleto
                                      : FFAppState().vendedroe.nome,
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  FFAppState().isRestaurante
                                      ? FFAppState().restaurante.nomeFantasia
                                      : FFAppState().vendedroe.nomeEmpresa,
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .textfiled,
                                        fontSize: 17.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController1,
                          focusNode: _model.textFieldFocusNode1,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelText: 'Nome',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            hintText: 'First name',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Satoshi',
                                  color: FlutterFlowTheme.of(context).textfiled,
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
                          validator: _model.textController1Validator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController2,
                          focusNode: _model.textFieldFocusNode2,
                          autofocus: false,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
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
                                  color: FlutterFlowTheme.of(context).textfiled,
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
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).black20,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 14.0, 16.0, 11.0),
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
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.textController2Validator
                              .asValidator(context),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.tFDddTextController,
                                focusNode: _model.tFDddFocusNode,
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
                                  hintText: 'Last name',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .textfiled,
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
                                          16.0, 14.0, 16.0, 11.0),
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
                                validator: _model.tFDddTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.tfTelefoneTextController,
                                focusNode: _model.tfTelefoneFocusNode,
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
                                  hintText: 'Last name',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Satoshi',
                                        color: FlutterFlowTheme.of(context)
                                            .textfiled,
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
                                          16.0, 14.0, 16.0, 11.0),
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
                                buildCounter: (context,
                                        {required currentLength,
                                        required isFocused,
                                        maxLength}) =>
                                    null,
                                keyboardType: TextInputType.number,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model
                                    .tfTelefoneTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        widget.info?.razaoSocial,
                                        'Nâo Informada',
                                      ),
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Satoshi',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              widget.info?.cidade,
                                              'Nâo Informada',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Satoshi',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textfiled,
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
                                              widget.info?.estado,
                                              'Nâo Informada',
                                            ),
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Satoshi',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textfiled,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      maxLines: 1,
                                    ),
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'cep ',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Satoshi',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textfiled,
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
                                              widget.info?.cep,
                                              'Nâo Informada',
                                            ),
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Satoshi',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textfiled,
                                              fontSize: 17.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      maxLines: 1,
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            widget.info?.endereco,
                                            'Nâo Informada',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Satoshi',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textfiled,
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .textfiled,
                                            fontSize: 17.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.textFieldFantasiaTextController,
                              focusNode: _model.textFieldFantasiaFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Nome Fantasia',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintText: 'Digite o novo nome',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .textfiled,
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
                                    color: FlutterFlowTheme.of(context)
                                        .borderColor,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model
                                  .textFieldFantasiaTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: TextFormField(
                              controller: _model.txtAdmTextController,
                              focusNode: _model.txtAdmFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Administrador',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintText: 'Digite o nome do administrador',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Satoshi',
                                      color: FlutterFlowTheme.of(context)
                                          .textfiled,
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
                                    color: FlutterFlowTheme.of(context)
                                        .borderColor,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.txtAdmTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
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
                                            color: FlutterFlowTheme.of(context)
                                                .textfiled,
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
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 14.0, 16.0, 11.0),
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
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model
                                        .txtDDDTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 16.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.txtNumeroTextController,
                                    focusNode: _model.txtNumeroFocusNode,
                                    autofocus: false,
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
                                      hintText: 'Whatsapp',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Satoshi',
                                            color: FlutterFlowTheme.of(context)
                                                .textfiled,
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
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 14.0, 16.0, 11.0),
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
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model
                                        .txtNumeroTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 24.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (FFAppState().isRestaurante) {
                      await ProfileTable().update(
                        data: {
                          'nome_completo': _model.textController1.text,
                          'telefone': _model.tfTelefoneTextController.text,
                          'foto_url': _model.foto,
                          'ddd': _model.tFDddTextController.text,
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'id',
                          currentUserUid,
                        ),
                      );
                      await RestaurantesTable().update(
                        data: {
                          'nome_fantasia':
                              _model.textFieldFantasiaTextController.text,
                          'telefone_whatsapp':
                              '55${_model.txtDDDTextController.text}${_model.txtNumeroTextController.text}',
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'id',
                          widget.info?.restauranteId,
                        ),
                      );
                    } else {
                      await VendedoresTable().update(
                        data: {
                          'nome': _model.textController1.text,
                          'telefone_whatsapp':
                              _model.tfTelefoneTextController.text,
                          'ddd': _model.tFDddTextController.text,
                          'foto_url': _model.foto,
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'auth_user_id',
                          currentUserUid,
                        ),
                      );
                    }

                    context.safePop();

                    safeSetState(() {});
                  },
                  text: 'Save',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 15.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily: 'Satoshi',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
    );
  }
}
