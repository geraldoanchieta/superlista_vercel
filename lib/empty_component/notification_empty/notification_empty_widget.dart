import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notification_empty_model.dart';
export 'notification_empty_model.dart';

class NotificationEmptyWidget extends StatefulWidget {
  const NotificationEmptyWidget({super.key});

  @override
  State<NotificationEmptyWidget> createState() =>
      _NotificationEmptyWidgetState();
}

class _NotificationEmptyWidgetState extends State<NotificationEmptyWidget> {
  late NotificationEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationEmptyModel());

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
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/notification.png',
                width: 116.0,
                height: 116.0,
                fit: BoxFit.scaleDown,
                alignment: Alignment(0.0, 0.0),
              ),
            ),
            Text(
              'No notifications yet!',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Satoshi',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'We did not found any notification let’s \nstart exploring',
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
      ),
    );
  }
}
