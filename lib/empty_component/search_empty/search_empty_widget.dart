import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'search_empty_model.dart';
export 'search_empty_model.dart';

class SearchEmptyWidget extends StatefulWidget {
  const SearchEmptyWidget({super.key});

  @override
  State<SearchEmptyWidget> createState() => _SearchEmptyWidgetState();
}

class _SearchEmptyWidgetState extends State<SearchEmptyWidget> {
  late SearchEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchEmptyModel());

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
      width: double.infinity,
      height: 223.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).lightGray,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/search1.png',
                width: 116.0,
                height: 116.0,
                fit: BoxFit.scaleDown,
                alignment: Alignment(0.0, 0.0),
              ),
            ),
          ),
          Text(
            'No results found',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Satoshi',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'Try using simpler search terms and then filtering the correct tog',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Satoshi',
                  color: FlutterFlowTheme.of(context).black40,
                  fontSize: 17.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}
