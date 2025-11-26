import '/empty_component/components/address_component/address_component_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/components/confirm_component/confirm_component_widget.dart';
import '/empty_component/components/payment_component/payment_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'checkout_page_widget.dart' show CheckoutPageWidget;
import 'package:flutter/material.dart';

class CheckoutPageModel extends FlutterFlowModel<CheckoutPageWidget> {
  ///  Local state fields for this page.

  int? selectedindex = 0;

  ///  State fields for stateful widgets in this page.

  // Model for CommonAppBar component.
  late CommonAppBarModel commonAppBarModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for AddressComponent component.
  late AddressComponentModel addressComponentModel;
  // Model for PaymentComponent component.
  late PaymentComponentModel paymentComponentModel;
  // Model for ConfirmComponent component.
  late ConfirmComponentModel confirmComponentModel;

  @override
  void initState(BuildContext context) {
    commonAppBarModel = createModel(context, () => CommonAppBarModel());
    addressComponentModel = createModel(context, () => AddressComponentModel());
    paymentComponentModel = createModel(context, () => PaymentComponentModel());
    confirmComponentModel = createModel(context, () => ConfirmComponentModel());
  }

  @override
  void dispose() {
    commonAppBarModel.dispose();
    addressComponentModel.dispose();
    paymentComponentModel.dispose();
    confirmComponentModel.dispose();
  }
}
