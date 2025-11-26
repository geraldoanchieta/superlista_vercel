import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'orderempty_model.dart';
export 'orderempty_model.dart';

class OrderemptyWidget extends StatefulWidget {
  const OrderemptyWidget({super.key});

  @override
  State<OrderemptyWidget> createState() => _OrderemptyWidgetState();
}

class _OrderemptyWidgetState extends State<OrderemptyWidget> {
  late OrderemptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderemptyModel());

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
                  'assets/images/order.png',
                  width: 116.0,
                  height: 116.0,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
            ),
            Text(
              'No orders yet!',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Satoshi',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'When you place an order it will show \nup here',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Satoshi',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 17.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
