import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'categories_all_contain_model.dart';
export 'categories_all_contain_model.dart';

class CategoriesAllContainWidget extends StatefulWidget {
  const CategoriesAllContainWidget({
    super.key,
    required this.image,
    required this.oncontainer,
    required this.text,
    required this.ontext,
  });

  final String? image;
  final Future Function()? oncontainer;
  final String? text;
  final Future Function()? ontext;

  @override
  State<CategoriesAllContainWidget> createState() =>
      _CategoriesAllContainWidgetState();
}

class _CategoriesAllContainWidgetState
    extends State<CategoriesAllContainWidget> {
  late CategoriesAllContainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesAllContainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.oncontainer?.call();
      },
      child: Container(
        width: 119.0,
        height: 144.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 79.0,
                height: 79.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.network(
                      widget.image!,
                      width: 56.0,
                      height: 56.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.ontext?.call();
                  },
                  child: AutoSizeText(
                    valueOrDefault<String>(
                      widget.text,
                      'name',
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    minFontSize: 14.0,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Satoshi',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
