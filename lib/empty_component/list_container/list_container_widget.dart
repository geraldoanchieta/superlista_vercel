import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'list_container_model.dart';
export 'list_container_model.dart';

class ListContainerWidget extends StatefulWidget {
  const ListContainerWidget({
    super.key,
    required this.basketdata,
  });

  final CategformodelStruct? basketdata;

  @override
  State<ListContainerWidget> createState() => _ListContainerWidgetState();
}

class _ListContainerWidgetState extends State<ListContainerWidget> {
  late ListContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListContainerModel());

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
        Container(
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
                    widget.basketdata!.image,
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
                          widget.basketdata?.name,
                          'Hair Comb',
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                            widget.basketdata?.price,
                            '\$120.00',
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context).primaryText,
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
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 5.0, 0.0),
          child: Container(
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).lightGray,
              shape: BoxShape.circle,
            ),
            child: Builder(
              builder: (context) {
                if (widget.basketdata?.isfav == true ? true : true) {
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
      ],
    );
  }
}
