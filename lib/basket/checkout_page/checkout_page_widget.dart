import '/dialog_component/order_confirm/order_confirm_widget.dart';
import '/empty_component/components/address_component/address_component_widget.dart';
import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/empty_component/components/confirm_component/confirm_component_widget.dart';
import '/empty_component/components/payment_component/payment_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'checkout_page_model.dart';
export 'checkout_page_model.dart';

class CheckoutPageWidget extends StatefulWidget {
  const CheckoutPageWidget({super.key});

  static String routeName = 'CheckoutPage';
  static String routePath = 'checkoutPage';

  @override
  State<CheckoutPageWidget> createState() => _CheckoutPageWidgetState();
}

class _CheckoutPageWidgetState extends State<CheckoutPageWidget> {
  late CheckoutPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).lightGray,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.commonAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CommonAppBarWidget(
                  name: 'Check out',
                  novaacao: () async {},
                  actionicon: () async {},
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    onPageChanged: (_) async {
                      _model.selectedindex = _model.pageViewCurrentIndex;
                      safeSetState(() {});
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      wrapWithModel(
                        model: _model.addressComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: AddressComponentWidget(),
                      ),
                      wrapWithModel(
                        model: _model.paymentComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: PaymentComponentWidget(),
                      ),
                      wrapWithModel(
                        model: _model.confirmComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ConfirmComponentWidget(),
                      ),
                    ],
                  ),
                ),
              ),
              Builder(
                builder: (context) => Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 24.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.selectedindex == 2) {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: GestureDetector(
                                onTap: () {
                                  FocusScope.of(dialogContext).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: OrderConfirmWidget(
                                  onTapOrder: () async {
                                    context.goNamed(BottomPageWidget.routeName);
                                  },
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        await _model.pageViewController?.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }
                    },
                    text: _model.selectedindex == 2 ? 'Confirm' : 'Next',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 56.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Satoshi',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
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
