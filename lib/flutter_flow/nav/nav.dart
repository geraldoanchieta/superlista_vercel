import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? SplashPageWidget() : LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? SplashPageWidget()
              : LoginPageWidget(),
          routes: [
            FFRoute(
              name: SplashPageWidget.routeName,
              path: SplashPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SplashPageWidget(),
            ),
            FFRoute(
              name: OnbordingPageWidget.routeName,
              path: OnbordingPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => OnbordingPageWidget(),
            ),
            FFRoute(
              name: LoginPageWidget.routeName,
              path: LoginPageWidget.routePath,
              builder: (context, params) => LoginPageWidget(),
            ),
            FFRoute(
              name: SignupPageRestWidget.routeName,
              path: SignupPageRestWidget.routePath,
              builder: (context, params) => SignupPageRestWidget(),
            ),
            FFRoute(
              name: ForgotPasswordPageWidget.routeName,
              path: ForgotPasswordPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ForgotPasswordPageWidget(),
            ),
            FFRoute(
              name: VerifyPageWidget.routeName,
              path: VerifyPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => VerifyPageWidget(),
            ),
            FFRoute(
              name: ResetPasswordPageWidget.routeName,
              path: ResetPasswordPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ResetPasswordPageWidget(),
            ),
            FFRoute(
              name: NotificationPageWidget.routeName,
              path: NotificationPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => NotificationPageWidget(),
            ),
            FFRoute(
              name: MasaladetailsPageWidget.routeName,
              path: MasaladetailsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MasaladetailsPageWidget(
                details: params.getParam(
                  'details',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: CategformodelStruct.fromSerializableMap,
                ),
              ),
            ),
            FFRoute(
              name: WriteReviewsPageWidget.routeName,
              path: WriteReviewsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WriteReviewsPageWidget(),
            ),
            FFRoute(
              name: CheckoutPageWidget.routeName,
              path: CheckoutPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CheckoutPageWidget(),
            ),
            FFRoute(
              name: PedidoDetalhesWidget.routeName,
              path: PedidoDetalhesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PedidoDetalhesWidget(
                pediddo: params.getParam<VwDashboardPedidosRow>(
                  'pediddo',
                  ParamType.SupabaseRow,
                ),
              ),
            ),
            FFRoute(
              name: CallPageWidget.routeName,
              path: CallPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CallPageWidget(),
            ),
            FFRoute(
              name: AddnewcardPageWidget.routeName,
              path: AddnewcardPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AddnewcardPageWidget(),
            ),
            FFRoute(
              name: FruitPageWidget.routeName,
              path: FruitPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FruitPageWidget(
                name: params.getParam(
                  'name',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: MasalaPageWidget.routeName,
              path: MasalaPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MasalaPageWidget(
                name: params.getParam(
                  'name',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: GroomingsPageWidget.routeName,
              path: GroomingsPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => GroomingsPageWidget(
                name: params.getParam(
                  'name',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SearchPageWidget.routeName,
              path: SearchPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SearchPageWidget(),
            ),
            FFRoute(
              name: BasketPageWidget.routeName,
              path: BasketPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => BasketPageWidget(),
            ),
            FFRoute(
              name: EditprofilePageWidget.routeName,
              path: EditprofilePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => EditprofilePageWidget(
                info: params.getParam<VwPerfilCompletoUtilizadorRow>(
                  'info',
                  ParamType.SupabaseRow,
                ),
              ),
            ),
            FFRoute(
              name: SecurityPageWidget.routeName,
              path: SecurityPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SecurityPageWidget(),
            ),
            FFRoute(
              name: ChangepasswordPageWidget.routeName,
              path: ChangepasswordPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ChangepasswordPageWidget(),
            ),
            FFRoute(
              name: SettingPageWidget.routeName,
              path: SettingPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SettingPageWidget(),
            ),
            FFRoute(
              name: AboutusPageWidget.routeName,
              path: AboutusPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AboutusPageWidget(),
            ),
            FFRoute(
              name: HelpPageWidget.routeName,
              path: HelpPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => HelpPageWidget(),
            ),
            FFRoute(
              name: FeedbackPageWidget.routeName,
              path: FeedbackPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FeedbackPageWidget(),
            ),
            FFRoute(
              name: FavouritePageWidget.routeName,
              path: FavouritePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FavouritePageWidget(),
            ),
            FFRoute(
              name: PrivacypolicyPageWidget.routeName,
              path: PrivacypolicyPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PrivacypolicyPageWidget(),
            ),
            FFRoute(
              name: SearchResultPageWidget.routeName,
              path: SearchResultPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SearchResultPageWidget(),
            ),
            FFRoute(
              name: CategoryPageWidget.routeName,
              path: CategoryPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CategoryPageWidget(),
            ),
            FFRoute(
              name: AddNewAddressPageWidget.routeName,
              path: AddNewAddressPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AddNewAddressPageWidget(),
            ),
            FFRoute(
              name: MyorderPageWidget.routeName,
              path: MyorderPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MyorderPageWidget(),
            ),
            FFRoute(
              name: BottomPageWidget.routeName,
              path: BottomPageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => BottomPageWidget(),
            ),
            FFRoute(
              name: MyProfilePageWidget.routeName,
              path: MyProfilePageWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MyProfilePageWidget(),
            ),
            FFRoute(
              name: HomeRestauranteWidget.routeName,
              path: HomeRestauranteWidget.routePath,
              requireAuth: true,
              builder: (context, params) => HomeRestauranteWidget(),
            ),
            FFRoute(
              name: ConfirmaCadastroWidget.routeName,
              path: ConfirmaCadastroWidget.routePath,
              builder: (context, params) => ConfirmaCadastroWidget(),
            ),
            FFRoute(
              name: CheckProdutoWidget.routeName,
              path: CheckProdutoWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CheckProdutoWidget(
                produto: params.getParam<VwChecklistDetalhadoRow>(
                  'produto',
                  ParamType.SupabaseRow,
                ),
              ),
            ),
            FFRoute(
              name: AddProdutosNaListaWidget.routeName,
              path: AddProdutosNaListaWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AddProdutosNaListaWidget(),
            ),
            FFRoute(
              name: CheckListWidget.routeName,
              path: CheckListWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CheckListWidget(),
            ),
            FFRoute(
              name: CotacaoListaWidget.routeName,
              path: CotacaoListaWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CotacaoListaWidget(
                solicitacao: params.getParam(
                  'solicitacao',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: CadastravendedoresWidget.routeName,
              path: CadastravendedoresWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CadastravendedoresWidget(),
            ),
            FFRoute(
              name: ConfirmarconviteWidget.routeName,
              path: ConfirmarconviteWidget.routePath,
              builder: (context, params) => ConfirmarconviteWidget(
                token: params.getParam(
                  'token',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: BoasvidasvendedorWidget.routeName,
              path: BoasvidasvendedorWidget.routePath,
              requireAuth: true,
              builder: (context, params) => BoasvidasvendedorWidget(),
            ),
            FFRoute(
              name: RespondercotacaoWidget.routeName,
              path: RespondercotacaoWidget.routePath,
              builder: (context, params) => RespondercotacaoWidget(
                token: params.getParam(
                  'token',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: EditprofilePageCopyWidget.routeName,
              path: EditprofilePageCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => EditprofilePageCopyWidget(),
            ),
            FFRoute(
              name: MyProfilePageCopyWidget.routeName,
              path: MyProfilePageCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MyProfilePageCopyWidget(),
            ),
            FFRoute(
              name: CotacaoProdutoWidget.routeName,
              path: CotacaoProdutoWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CotacaoProdutoWidget(
                produto: params.getParam<VwDetalhesItensSolicitadosRow>(
                  'produto',
                  ParamType.SupabaseRow,
                ),
              ),
            ),
            FFRoute(
              name: CriacotacaoWidget.routeName,
              path: CriacotacaoWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CriacotacaoWidget(
                pproduto: params.getParam<VwCatalogoUltimoPrecoRow>(
                  'pproduto',
                  ParamType.SupabaseRow,
                ),
                catalogo: params.getParam<VendedorCatalogoProdutosRow>(
                  'catalogo',
                  ParamType.SupabaseRow,
                ),
              ),
            ),
            FFRoute(
              name: HomeVendedorWidget.routeName,
              path: HomeVendedorWidget.routePath,
              requireAuth: true,
              builder: (context, params) => HomeVendedorWidget(),
            ),
            FFRoute(
              name: AuthredirectWidget.routeName,
              path: AuthredirectWidget.routePath,
              builder: (context, params) => AuthredirectWidget(),
            ),
            FFRoute(
              name: CotacaoProdutoVendedorWidget.routeName,
              path: CotacaoProdutoVendedorWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CotacaoProdutoVendedorWidget(
                produto: params.getParam<VwItensParaCotarRow>(
                  'produto',
                  ParamType.SupabaseRow,
                ),
              ),
            ),
            FFRoute(
              name: CotacaoListaVendedorWidget.routeName,
              path: CotacaoListaVendedorWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CotacaoListaVendedorWidget(
                solicitacao: params.getParam(
                  'solicitacao',
                  ParamType.int,
                ),
                cotacao: params.getParam(
                  'cotacao',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: OrderdetailPageCopyWidget.routeName,
              path: OrderdetailPageCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => OrderdetailPageCopyWidget(),
            ),
            FFRoute(
              name: CotaceosEncerradasRestauranteWidget.routeName,
              path: CotaceosEncerradasRestauranteWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  CotaceosEncerradasRestauranteWidget(),
            ),
            FFRoute(
              name: SelecaoDeCaDASTROWidget.routeName,
              path: SelecaoDeCaDASTROWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SelecaoDeCaDASTROWidget(),
            ),
            FFRoute(
              name: CadastroRestauranteWidget.routeName,
              path: CadastroRestauranteWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CadastroRestauranteWidget(),
            ),
            FFRoute(
              name: CriaRestauranteWidget.routeName,
              path: CriaRestauranteWidget.routePath,
              builder: (context, params) => CriaRestauranteWidget(),
            ),
            FFRoute(
              name: SignupPageFinishWidget.routeName,
              path: SignupPageFinishWidget.routePath,
              builder: (context, params) => SignupPageFinishWidget(),
            ),
            FFRoute(
              name: SignUpPageWidget.routeName,
              path: SignUpPageWidget.routePath,
              builder: (context, params) => SignUpPageWidget(),
            ),
            FFRoute(
              name: SignuVendedorWidget.routeName,
              path: SignuVendedorWidget.routePath,
              builder: (context, params) => SignuVendedorWidget(),
            ),
            FFRoute(
              name: ConvidaRestaurranteWidget.routeName,
              path: ConvidaRestaurranteWidget.routePath,
              builder: (context, params) => ConvidaRestaurranteWidget(),
            ),
            FFRoute(
              name: VideoTurorialWidget.routeName,
              path: VideoTurorialWidget.routePath,
              requireAuth: true,
              builder: (context, params) => VideoTurorialWidget(
                tutorial: params.getParam(
                  'tutorial',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: TutorialStruct.fromSerializableMap,
                ),
                atalho: params.getParam(
                  'atalho',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: TutoriaisWidget.routeName,
              path: TutoriaisWidget.routePath,
              requireAuth: true,
              builder: (context, params) => TutoriaisWidget(),
            ),
            FFRoute(
              name: Auth2Widget.routeName,
              path: Auth2Widget.routePath,
              builder: (context, params) => Auth2Widget(),
            ),
            FFRoute(
              name: TesteusuarioWidget.routeName,
              path: TesteusuarioWidget.routePath,
              requireAuth: true,
              builder: (context, params) => TesteusuarioWidget(),
            ),
            FFRoute(
              name: SignupPageRestCopyWidget.routeName,
              path: SignupPageRestCopyWidget.routePath,
              builder: (context, params) => SignupPageRestCopyWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Design_sem_nome_(3).png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
