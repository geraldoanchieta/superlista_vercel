import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/notification_empty/notification_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_page_widget.dart' show NotificationPageWidget;
import 'package:flutter/material.dart';

class NotificationPageModel extends FlutterFlowModel<NotificationPageWidget> {
  ///  Local state fields for this page.

  bool notification = false;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // Model for NotificationEmpty component.
  late NotificationEmptyModel notificationEmptyModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    notificationEmptyModel =
        createModel(context, () => NotificationEmptyModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    notificationEmptyModel.dispose();
  }
}
