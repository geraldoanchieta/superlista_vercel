import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'product_component_model.dart';
export 'product_component_model.dart';

class ProductComponentWidget extends StatefulWidget {
  const ProductComponentWidget({
    super.key,
    required this.data,
    required this.ontapcontain,
    required this.ontapfav,
  });

  final CategformodelStruct? data;
  final Future Function()? ontapcontain;
  final Future Function()? ontapfav;

  @override
  State<ProductComponentWidget> createState() => _ProductComponentWidgetState();
}

class _ProductComponentWidgetState extends State<ProductComponentWidget> {
  late ProductComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional(1.0, -1.0),
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await widget.ontapcontain?.call();
          },
          child: Container(
            width: 186.0,
            height: 204.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 7.0, 7.0, 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.network(
                      valueOrDefault<String>(
                        widget.data?.image,
                        'dxadsd',
                      ),
                      width: 162.0,
                      height: 142.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.data?.name,
                            'title',
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.5,
                                  ),
                        ),
                        Flexible(
                          child: Text(
                            valueOrDefault<String>(
                              widget.data?.price,
                              '20',
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Satoshi',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 5.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.ontapfav?.call();
            },
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).lightGray,
                shape: BoxShape.circle,
              ),
              child: Builder(
                builder: (context) {
                  if (widget.data?.isfav == true) {
                    return Padding(
                      padding: EdgeInsets.all(6.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: SvgPicture.asset(
                          'assets/images/fav_fill.svg',
                          width: 24.0,
                          height: 24.0,
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.all(6.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: SvgPicture.asset(
                          'assets/images/fav_ic.svg',
                          width: 24.0,
                          height: 24.0,
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
