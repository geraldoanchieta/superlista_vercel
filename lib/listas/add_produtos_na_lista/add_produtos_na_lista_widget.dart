import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/listas/bs_procuraitem/bs_procuraitem_widget.dart';
import '/listas/components/add_produtos/add_produtos_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'add_produtos_na_lista_model.dart';
export 'add_produtos_na_lista_model.dart';

class AddProdutosNaListaWidget extends StatefulWidget {
  const AddProdutosNaListaWidget({super.key});

  static String routeName = 'addProdutosNaLista';
  static String routePath = 'addProdutosNaLista';

  @override
  State<AddProdutosNaListaWidget> createState() =>
      _AddProdutosNaListaWidgetState();
}

class _AddProdutosNaListaWidgetState extends State<AddProdutosNaListaWidget> {
  late AddProdutosNaListaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddProdutosNaListaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).lightGray,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            enableDrag: false,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: BsProcuraitemWidget(
                  pesquisa: 'produtoMaster',
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        },
        backgroundColor: FlutterFlowTheme.of(context).primary,
        elevation: 8.0,
        child: FaIcon(
          FontAwesomeIcons.search,
          color: FlutterFlowTheme.of(context).info,
          size: 24.0,
        ),
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.12,
                decoration: BoxDecoration(),
                child: Builder(
                  builder: (context) {
                    if (!FFAppState().listaNova) {
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.commonAppBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CommonAppBarWidget(
                              name: 'Adicionar Produtos',
                              color: false,
                              iconExtra: false,
                              novaacao: () async {
                                context.pushNamed(CheckListWidget.routeName);
                              },
                              actionicon: () async {},
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Text(
                                  'Adicione seu primeiro item a esta lista',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.88,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: wrapWithModel(
                    model: _model.addProdutosModel,
                    updateCallback: () => safeSetState(() {}),
                    child: AddProdutosWidget(),
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
