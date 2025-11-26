import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'aboutus_page_model.dart';
export 'aboutus_page_model.dart';

class AboutusPageWidget extends StatefulWidget {
  const AboutusPageWidget({super.key});

  static String routeName = 'AboutusPage';
  static String routePath = 'aboutusPage';

  @override
  State<AboutusPageWidget> createState() => _AboutusPageWidgetState();
}

class _AboutusPageWidgetState extends State<AboutusPageWidget> {
  late AboutusPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutusPageModel());

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.commonAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CommonAppBarWidget(
                  name: 'Sobre Nós',
                  color: false,
                  iconExtra: false,
                  novaacao: () async {
                    context.safePop();
                  },
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
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/images/Gemini_Generated_Image_kqj33gkqj33gkqj3.png',
                          width: 388.0,
                          height: (MediaQuery.sizeOf(context).width < 550.0
                                  ? 400
                                  : (MediaQuery.sizeOf(context).width < 700.0
                                      ? 600
                                      : 600))
                              .toDouble(),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Sobre Nós',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        'Nós conhecemos a sua rotina. Sabemos o que é gerir um negócio de gastronomia e perder horas preciosas do seu dia a mergulhar num caos de mensagens de WhatsApp, planilhas intermináveis e blocos de notas para tentar fazer uma cotação de insumos. Sabemos a frustração de comparar o preço de um fornecedor que vende em caixas com outro que vende em quilos.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).textfiled,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'Pele em jogo',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        'A Super Lista nasceu da frustração real de um proprietário de restaurante com mais de 15 anos no mercado. Como engenheiro químico de formação e entusiasta de tecnologia, nosso fundador decidiu resolver um problema que enfrentava diariamente.\n\nApós anos perdendo tempo com cotações manuais, lidando com listas de compras desorganizadas e pagando mais do que deveria por insumos, ele desenvolveu a Super Lista para transformar esse processo.\n\nHoje, nossa missão é democratizar o acesso à tecnologia para todos os estabelecimentos de alimentos do Brasil, ajudando-os a economizar tempo e dinheiro para que possam focar no que realmente importa: seu negócio e seus clientes.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).textfiled,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'O Super Lista nasceu dessa realidade.',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        'A nossa missão é simples: devolver o seu tempo e dar-lhe o controlo total sobre as suas compras. Acreditamos que a tecnologia deve servir para simplificar, e não para complicar.\n\nPor isso, criámos uma plataforma que transforma a sua rotina de cotações num processo inteligente, rápido e centralizado. Somos a ponte digital que conecta restaurantes e fornecedores, substituindo a desorganização por um fluxo de trabalho eficiente, desde o checklist do seu stock até à ordem de compra formal.\n\nO nosso objetivo é que você passe menos tempo a cotar e mais tempo a fazer o que ama: criar experiências gastronómicas incríveis para os seus clientes.\n\nBem-vindo a uma forma mais inteligente de',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Satoshi',
                              color: FlutterFlowTheme.of(context).textfiled,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
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
