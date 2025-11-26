import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'favourite_empty_model.dart';
export 'favourite_empty_model.dart';

class FavouriteEmptyWidget extends StatefulWidget {
  const FavouriteEmptyWidget({super.key});

  @override
  State<FavouriteEmptyWidget> createState() => _FavouriteEmptyWidgetState();
}

class _FavouriteEmptyWidgetState extends State<FavouriteEmptyWidget> {
  late FavouriteEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavouriteEmptyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).lightGray,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 26.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/images/favourite_empty.png',
                    width: 116.0,
                    height: 116.0,
                    fit: BoxFit.scaleDown,
                    alignment: Alignment(0.0, 0.0),
                  ),
                ),
              ),
              Text(
                'No favorite yet!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Satoshi',
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  'Like a product you see save them here to your favourites.',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Satoshi',
                        color: FlutterFlowTheme.of(context).black40,
                        fontSize: 17.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
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
