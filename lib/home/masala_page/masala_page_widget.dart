import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'masala_page_model.dart';
export 'masala_page_model.dart';

class MasalaPageWidget extends StatefulWidget {
  const MasalaPageWidget({
    super.key,
    String? name,
  }) : this.name = name ?? 'Masalas';

  final String name;

  static String routeName = 'MasalaPage';
  static String routePath = 'masalaPage';

  @override
  State<MasalaPageWidget> createState() => _MasalaPageWidgetState();
}

class _MasalaPageWidgetState extends State<MasalaPageWidget> {
  late MasalaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MasalaPageModel());

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
                  name: widget.name,
                  novaacao: () async {},
                  actionicon: () async {},
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      16.0,
                      0,
                      24.0,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [],
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
