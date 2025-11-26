import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'common_app_bar_model.dart';
export 'common_app_bar_model.dart';

class CommonAppBarWidget extends StatefulWidget {
  const CommonAppBarWidget({
    super.key,
    required this.name,
    bool? color,
    required this.novaacao,
    bool? iconExtra,
    required this.actionicon,
  })  : this.color = color ?? false,
        this.iconExtra = iconExtra ?? false;

  final String? name;
  final bool color;
  final Future Function()? novaacao;
  final bool iconExtra;
  final Future Function()? actionicon;

  @override
  State<CommonAppBarWidget> createState() => _CommonAppBarWidgetState();
}

class _CommonAppBarWidgetState extends State<CommonAppBarWidget> {
  late CommonAppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonAppBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.novaacao?.call();
                  },
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: widget.color == true
                          ? FlutterFlowTheme.of(context).lightGray
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          'assets/images/back_icon.png',
                          width: 24.0,
                          height: 24.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.name,
                      'name',
                    ),
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Satoshi',
                          fontSize: 28.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.5,
                        ),
                  ),
                ),
              ],
            ),
            if (widget.iconExtra)
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await widget.actionicon?.call();
                },
                child: Icon(
                  Icons.menu_open,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 35.0,
                ),
              ),
          ].divide(SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
