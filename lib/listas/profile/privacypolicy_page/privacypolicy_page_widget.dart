import '/empty_component/components/common_app_bar/common_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'privacypolicy_page_model.dart';
export 'privacypolicy_page_model.dart';

class PrivacypolicyPageWidget extends StatefulWidget {
  const PrivacypolicyPageWidget({super.key});

  static String routeName = 'PrivacypolicyPage';
  static String routePath = 'privacypolicyPage';

  @override
  State<PrivacypolicyPageWidget> createState() =>
      _PrivacypolicyPageWidgetState();
}

class _PrivacypolicyPageWidgetState extends State<PrivacypolicyPageWidget>
    with TickerProviderStateMixin {
  late PrivacypolicyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacypolicyPageModel());

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
                  name: 'Privacidade e uso',
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
                    primary: false,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Text(
                          'Termos e Condições de Uso ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Super ListaÚltima atualização: 3 de setembro de 2025Bem-vindo à Super Lista!Estes Termos e Condições de Uso (\"Termos\") regem o seu acesso e uso da nossa plataforma digital (\"Plataforma\" ou \"Serviço\"), que visa conectar Compradores (restaurantes, bares, hotéis) e Vendedores (fornecedores, distribuidores) no setor da gastronomia.Ao aceder ou usar a nossa Plataforma, você concorda em cumprir e ficar vinculado a estes Termos. Por favor, leia-os com atenção.1. Natureza do Serviço e Limitação de Responsabilidade1.1. A Super Lista é uma Ferramenta Auxiliar. A nossa Plataforma é uma ferramenta de comunicação e organização, projetada para otimizar e agilizar o processo de cotação de insumos. O seu objetivo é encurtar o tempo gasto em processos manuais.1.2. Não Somos uma Plataforma de Compras. A Super Lista atua como uma ponte, não como um marketplace transacional. Nós não participamos, intermediamos, garantimos ou temos qualquer responsabilidade sobre as negociações, pagamentos, entregas ou a qualidade dos produtos cotados.1.3. As Informações são Meramente Informativas. Todos os dados inseridos na Plataforma, incluindo, mas não se limitando a, nomes de produtos, marcas, embalagens, preços e disponibilidade de stock, são de total responsabilidade dos utilizadores que os inserem. A Super Lista não garante a precisão, veracidade ou atualidade de nenhuma informação. Os dados estão sujeitos a erros, omissões e alterações sem aviso prévio.1.4. Preços e Ofertas Não São Contratuais. Os preços informados pelos Vendedores na Plataforma são considerados ofertas informativas e não vinculativas. A Super Lista frisa que nem a Plataforma, nem o Vendedor, têm a obrigação de praticar os preços informados. As ofertas podem ser alteradas ou suspensas a qualquer momento, sem aviso prévio, dependendo de fatores como disponibilidade de stock, erros de digitação ou mudanças nas condições de mercado.2. Responsabilidades dos Utilizadores2.1. Responsabilidade do Comprador (Restaurante):Confirmação Obrigatória: É de responsabilidade exclusiva do Comprador confirmar diretamente com o Vendedor todos os detalhes de uma oferta (preço final, disponibilidade, prazo de entrega, condições de pagamento) antes de formalizar qualquer pedido. A Plataforma não é uma fonte de verdade absoluta.Não Obrigatoriedade de Compra: A solicitação de uma cotação e o recebimento de ofertas não geram nenhuma obrigação de compra para o Comprador.2.2. Responsabilidade do Vendedor (Fornecedor):Direito de Alteração e Cancelamento: O Vendedor tem o direito de suspender, alterar ou cancelar qualquer oferta a qualquer momento, mesmo após o seu envio, sem necessidade de aviso prévio.Cancelamento de Pedidos: Mesmo após um pedido ser gerado na Plataforma, o Vendedor reserva-se o direito de o cancelar, total ou parcialmente, sem necessidade de apresentar motivo, seja por indisponibilidade de stock, erro de preço ou qualquer outra razão comercial.Veracidade das Informações: O Vendedor é o único responsável pela precisão das informações dos produtos e preços que insere na Plataforma.3. Contas e SegurançaVocê é responsável por manter a confidencialidade do seu método de acesso (seja por senha ou link mágico) e por todas as atividades que ocorram na sua conta. A Super Lista não será responsável por qualquer perda ou dano decorrente do seu incumprimento desta obrigação de segurança.4. Conduta do UtilizadorVocê concorda em não usar a Plataforma para qualquer finalidade ilegal ou proibida por estes Termos. Você não pode usar o Serviço de qualquer maneira que possa danificar, desativar, sobrecarregar ou prejudicar a nossa infraestrutura.5. Propriedade IntelectualTodo o conteúdo da Plataforma, incluindo o design, texto, gráficos e software, é propriedade da Super Lista ou dos seus licenciadores e está protegido por leis de direitos autorais e propriedade intelectual.6. Alterações aos TermosReservamo-nos o direito de modificar estes Termos a qualquer momento. Notificaremos sobre quaisquer alterações através da Plataforma ou por outros meios de comunicação. A continuação do uso do Serviço após tais alterações constituirá a sua aceitação dos novos Termos.7. RescisãoPodemos suspender ou encerrar o seu acesso à Plataforma a qualquer momento, por qualquer motivo, incluindo a violação destes Termos, sem aviso prévio.8. Lei AplicávelEstes Termos serão regidos e interpretados de acordo com as leis da República Federativa do Brasil, incluindo a Lei Geral de Proteção de Dados (LGPD).9. ContatoSe tiver alguma dúvida sobre estes Termos, entre em contato connosco através do e-mail: [contato@superlista.app]. ',
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).black40,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Text(
                          'Política de Privacidade ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Satoshi',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Super ListaÚltima atualização: 3 de setembro de 2025A sua privacidade é de extrema importância para a Super Lista (\"nós\", \"nosso\"). Esta Política de Privacidade explica como coletamos, usamos, partilhamos e protegemos as suas informações pessoais quando você utiliza a nossa plataforma digital (\"Plataforma\"), em conformidade com a Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018) do Brasil.Ao utilizar a nossa Plataforma, você concorda com a coleta e uso das suas informações de acordo com esta política.1. Quais Dados ColetamosPara o funcionamento da Plataforma, atuamos como Controladores dos Dados e coletamos as seguintes informações:Dados de Identificação do Utilizador (Comprador e Vendedor):Nome completo.Número de telefone com DDD (para autenticação e notificações via WhatsApp).Endereço de e-mail (para recuperação de conta e comunicação).Foto de perfil (opcional).Dados da Entidade Comercial (Restaurante ou Fornecedor):Nome da empresa (Nome Fantasia e Razão Social).CNPJ.Endereço comercial.Logo da empresa (opcional).Dados de Uso da Plataforma:Listas de produtos, detalhes de embalagens e stock mínimo (criados pelos Compradores).Catálogo de produtos e preços (criados pelos Vendedores).Histórico de cotações, ofertas, pedidos e mensagens trocadas através da plataforma.2. Para Qual Finalidade Usamos os Seus DadosUtilizamos os seus dados estritamente para as finalidades essenciais ao funcionamento da Plataforma, respeitando o princípio da necessidade da LGPD:Para Fornecer o Serviço: A principal finalidade é viabilizar o fluxo de cotação. Os seus dados de contato e da sua empresa são partilhados com outros utilizadores da plataforma com quem você interage (um Comprador vê os dados do Vendedor que respondeu, e vice-versa).Para Comunicação e Notificações: Utilizamos o seu número de telefone para enviar notificações essenciais via WhatsApp sobre convites, novas cotações e pedidos, que são o núcleo da nossa comunicação.Para Autenticação e Segurança: Utilizamos o seu telefone ou e-mail para garantir um acesso seguro à sua conta através de links mágicos.Para Geração de Documentos: Os dados da sua empresa (nome, logo) são utilizados para gerar as Ordens de Compra em PDF.Para Suporte ao Cliente: Para o ajudar a resolver problemas ou responder às suas perguntas.3. Com Quem Partilhamos os Seus DadosA sua privacidade é a nossa prioridade. Não vendemos os seus dados. O partilhamento ocorre apenas quando necessário para o funcionamento do serviço:Entre Utilizadores da Plataforma: Como mencionado, dados de contato e comerciais são partilhados entre Compradores e Vendedores durante o processo de cotação e pedido.Provedores de Serviços de Terceiros:Supabase: A nossa infraestrutura de backend e banco de dados. Os seus dados são armazenados de forma segura nos servidores da Supabase.Provedor da API de WhatsApp (ex: waapi, wame): O seu número de telefone e o conteúdo das mensagens de notificação são processados por estes serviços para que as mensagens possam ser enviadas.4. Segurança dos Seus DadosImplementamos medidas de segurança técnicas e organizacionais para proteger os seus dados pessoais contra acesso não autorizado, alteração, divulgação ou destruição. O acesso aos dados é restrito e controlado por políticas de segurança.5. Os Seus Direitos como Titular dos Dados (LGPD)De acordo com a LGPD, você tem o direito de:Confirmação e Acesso: Saber se tratamos os seus dados e aceder a eles.Correção: Corrigir dados incompletos, inexatos ou desatualizados.Anonimização, Bloqueio ou Eliminação: Solicitar a eliminação de dados desnecessários ou tratados em desconformidade com a LGPD.Portabilidade: Solicitar a transferência dos seus dados para outro fornecedor de serviço.Informação sobre Partilhamento: Saber com quais entidades públicas e privadas partilhamos os seus dados.Revogação do Consentimento: Revogar o seu consentimento a qualquer momento.Para exercer os seus direitos, entre em contato connosco através dos canais listados abaixo.6. Retenção de DadosManteremos os seus dados pessoais apenas pelo tempo necessário para cumprir as finalidades para as quais foram coletados, incluindo para fins de cumprimento de quaisquer obrigações legais, contratuais ou de prestação de contas.7. Alterações a Esta Política de PrivacidadePodemos atualizar esta Política de Privacidade de tempos em tempos. Notificaremos sobre quaisquer alterações, publicando a nova política na Plataforma.8. Encarregado pela Proteção de Dados (DPO) e ContatoPara qualquer dúvida sobre esta Política de Privacidade ou para exercer os seus direitos, entre em contato com o nosso Encarregado pela Proteção de Dados:Nome do Responsável/DPOE-mail: [seu-email-de-privacidade@superlista.com]i',
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Satoshi',
                                    color: FlutterFlowTheme.of(context).black40,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['listViewOnPageLoadAnimation']!),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
