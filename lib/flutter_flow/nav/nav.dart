import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BlubemAuthUser? initialUser;
  BlubemAuthUser? user;
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

  void update(BlubemAuthUser newUser) {
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
          appStateNotifier.loggedIn ? const HomeWidget() : const HomeBalaoWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const HomeWidget() : const HomeBalaoWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) => const HomeWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(
            tokenAdmin: params.getParam(
              'tokenAdmin',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Register',
          path: '/register',
          builder: (context, params) => const RegisterWidget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa1',
          path: '/createSiteEtapa1',
          builder: (context, params) => const CreateSiteEtapa1Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa7',
          path: '/createSiteEtapa7',
          builder: (context, params) => const CreateSiteEtapa7Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa8',
          path: '/createSiteEtapa8',
          builder: (context, params) => const CreateSiteEtapa8Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas12',
          path: '/createSiteEtapas12',
          builder: (context, params) => const CreateSiteEtapas12Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas13',
          path: '/createSiteEtapas13',
          builder: (context, params) => const CreateSiteEtapas13Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas14',
          path: '/createSiteEtapas14',
          builder: (context, params) => const CreateSiteEtapas14Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas21',
          path: '/createSiteEtapas21',
          builder: (context, params) => const CreateSiteEtapas21Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas22',
          path: '/createSiteEtapas22',
          builder: (context, params) => const CreateSiteEtapas22Widget(),
        ),
        FFRoute(
          name: 'HomeBalao',
          path: '/homeBalao',
          builder: (context, params) => const HomeBalaoWidget(),
        ),
        FFRoute(
          name: 'Calculadora',
          path: '/calculadora',
          builder: (context, params) => const CalculadoraWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas15',
          path: '/createSiteEtapas15',
          builder: (context, params) => const CreateSiteEtapas15Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas17',
          path: '/createSiteEtapas17',
          builder: (context, params) => const CreateSiteEtapas17Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas19',
          path: '/createSiteEtapas19',
          builder: (context, params) => const CreateSiteEtapas19Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas20',
          path: '/createSiteEtapas20',
          builder: (context, params) => const CreateSiteEtapas20Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas11',
          path: '/createSiteEtapas11',
          builder: (context, params) => const CreateSiteEtapas11Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas16',
          path: '/createSiteEtapas16',
          builder: (context, params) => const CreateSiteEtapas16Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa6',
          path: '/createSiteEtapa6',
          builder: (context, params) => const CreateSiteEtapa6Widget(),
        ),
        FFRoute(
          name: 'EditarPerfil',
          path: '/editarPerfil',
          builder: (context, params) => const EditarPerfilWidget(),
        ),
        FFRoute(
          name: 'EncerrarConta',
          path: '/encerrarConta',
          builder: (context, params) => const EncerrarContaWidget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa9',
          path: '/createSiteEtapa9',
          builder: (context, params) => const CreateSiteEtapa9Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas10',
          path: '/createSiteEtapas10',
          builder: (context, params) => const CreateSiteEtapas10Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapas18',
          path: '/createSiteEtapas18',
          builder: (context, params) => const CreateSiteEtapas18Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa2',
          path: '/createSiteEtapa2',
          builder: (context, params) => const CreateSiteEtapa2Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa3',
          path: '/createSiteEtapa3',
          builder: (context, params) => const CreateSiteEtapa3Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa4',
          path: '/createSiteEtapa4',
          builder: (context, params) => const CreateSiteEtapa4Widget(),
        ),
        FFRoute(
          name: 'CreateSiteEtapa5',
          path: '/createSiteEtapa5',
          builder: (context, params) => const CreateSiteEtapa5Widget(),
        ),
        FFRoute(
          name: 'Convites',
          path: '/convites',
          builder: (context, params) => const ConvitesWidget(),
        ),
        FFRoute(
          name: 'ConvitesHistoricoConsumo',
          path: '/convitesHistoricoConsumo',
          builder: (context, params) => const ConvitesHistoricoConsumoWidget(),
        ),
        FFRoute(
          name: 'NewClient01',
          path: '/newClient01',
          builder: (context, params) => NewClient01Widget(
            idClient: params.getParam(
              'idClient',
              ParamType.int,
            ),
            adicionadoPeloMais: params.getParam(
              'adicionadoPeloMais',
              ParamType.bool,
            ),
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
            dateSelected: params.getParam(
              'dateSelected',
              ParamType.DateTime,
            ),
            hourSelected: params.getParam(
              'hourSelected',
              ParamType.String,
            ),
            existAppointment: params.getParam(
              'existAppointment',
              ParamType.bool,
            ),
            scheduleJson: params.getParam(
              'scheduleJson',
              ParamType.JSON,
            ),
            isAddNewClient: params.getParam(
              'isAddNewClient',
              ParamType.bool,
            ),
            idClientSelected: params.getParam(
              'idClientSelected',
              ParamType.int,
            ),
            situacao: params.getParam(
              'situacao',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'NewClient03',
          path: '/newClient03',
          builder: (context, params) => NewClient03Widget(
            idClient: params.getParam(
              'idClient',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'NewClient04',
          path: '/newClient04',
          builder: (context, params) => NewClient04Widget(
            idClient: params.getParam(
              'idClient',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'NewClient05',
          path: '/newClient05',
          builder: (context, params) => NewClient05Widget(
            idClient: params.getParam(
              'idClient',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'listAllClients',
          path: '/listAllClients',
          builder: (context, params) => const ListAllClientsWidget(),
        ),
        FFRoute(
          name: 'NewClient02',
          path: '/newClient02',
          builder: (context, params) => NewClient02Widget(
            idClient: params.getParam(
              'idClient',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Services01',
          path: '/services01',
          builder: (context, params) => const Services01Widget(),
        ),
        FFRoute(
          name: 'Services02',
          path: '/services02',
          builder: (context, params) => Services02Widget(
            adicionadoPeloMais: params.getParam(
              'adicionadoPeloMais',
              ParamType.bool,
            ),
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Services03',
          path: '/services03',
          builder: (context, params) => Services03Widget(
            adicionadoPeloMais: params.getParam(
              'adicionadoPeloMais',
              ParamType.bool,
            ),
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Services04',
          path: '/services04',
          builder: (context, params) => Services04Widget(
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Services05',
          path: '/services05',
          builder: (context, params) => Services05Widget(
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Ratings',
          path: '/ratings',
          builder: (context, params) => RatingsWidget(
            professionalclientid: params.getParam(
              'professionalclientid',
              ParamType.int,
            ),
            idClient: params.getParam(
              'idClient',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Schedule01',
          path: '/schedule01',
          builder: (context, params) => const Schedule01Widget(),
        ),
        FFRoute(
          name: 'Schedule02',
          path: '/schedule02',
          builder: (context, params) => Schedule02Widget(
            dateSelected: params.getParam(
              'dateSelected',
              ParamType.DateTime,
            ),
            hourSelected: params.getParam(
              'hourSelected',
              ParamType.String,
            ),
            scheduleSelected: params.getParam(
              'scheduleSelected',
              ParamType.JSON,
            ),
            scheduleJson: params.getParam(
              'scheduleJson',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'Schedule03',
          path: '/schedule03',
          builder: (context, params) => Schedule03Widget(
            dateSelected: params.getParam(
              'dateSelected',
              ParamType.DateTime,
            ),
            hourSelected: params.getParam(
              'hourSelected',
              ParamType.String,
            ),
            existAppointment: params.getParam(
              'existAppointment',
              ParamType.bool,
            ),
            scheduleCabecalho: params.getParam(
              'scheduleCabecalho',
              ParamType.JSON,
            ),
            isAddNewClient: params.getParam(
              'isAddNewClient',
              ParamType.bool,
            ),
            idClientSelected: params.getParam(
              'idClientSelected',
              ParamType.int,
            ),
            situacao: params.getParam(
              'situacao',
              ParamType.String,
            ),
            idProfessionalClientSelected: params.getParam(
              'idProfessionalClientSelected',
              ParamType.int,
            ),
            idAppointmentSelected: params.getParam(
              'idAppointmentSelected',
              ParamType.int,
            ),
            duration: params.getParam(
              'duration',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'SolicitacoesADM',
          path: '/solicitacoesADM',
          builder: (context, params) => const SolicitacoesADMWidget(),
        ),
        FFRoute(
          name: 'FirstAccessReminder',
          path: '/firstAccessReminder',
          builder: (context, params) => const FirstAccessReminderWidget(),
        ),
        FFRoute(
          name: 'Reminders',
          path: '/reminders',
          builder: (context, params) => const RemindersWidget(),
        ),
        FFRoute(
          name: 'FirstAccessInsights',
          path: '/firstAccessInsights',
          builder: (context, params) => const FirstAccessInsightsWidget(),
        ),
        FFRoute(
          name: 'NotInsights',
          path: '/notInsights',
          builder: (context, params) => const NotInsightsWidget(),
        ),
        FFRoute(
          name: 'Insights',
          path: '/insights',
          builder: (context, params) => const InsightsWidget(),
        ),
        FFRoute(
          name: 'FirstAccessLoyalty',
          path: '/firstAccessLoyalty',
          builder: (context, params) => const FirstAccessLoyaltyWidget(),
        ),
        FFRoute(
          name: 'Loyalty01',
          path: '/loyalty01',
          builder: (context, params) => const Loyalty01Widget(),
        ),
        FFRoute(
          name: 'Loyalty02',
          path: '/loyalty02',
          builder: (context, params) => const Loyalty02Widget(),
        ),
        FFRoute(
          name: 'LoyaltyHistory',
          path: '/loyaltyHistory',
          builder: (context, params) => const LoyaltyHistoryWidget(),
        ),
        FFRoute(
          name: 'Comments',
          path: '/comments',
          builder: (context, params) => CommentsWidget(
            idAppointment: params.getParam(
              'idAppointment',
              ParamType.int,
            ),
            idClient: params.getParam(
              'idClient',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'FirstAccess',
          path: '/firstAccess',
          builder: (context, params) => FirstAccessWidget(
            navigateTo: params.getParam(
              'navigateTo',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'TrialFinished',
          path: '/trialFinished',
          builder: (context, params) => const TrialFinishedWidget(),
        ),
        FFRoute(
          name: 'SubscriptionOptions',
          path: '/subscriptionOptions',
          builder: (context, params) => const SubscriptionOptionsWidget(),
        ),
        FFRoute(
          name: 'SubscriptionCancel',
          path: '/subscriptionCancel',
          builder: (context, params) => const SubscriptionCancelWidget(),
        ),
        FFRoute(
          name: 'SubscriptionHistory',
          path: '/subscriptionHistory',
          builder: (context, params) => const SubscriptionHistoryWidget(),
        ),
        FFRoute(
          name: 'Help',
          path: '/help',
          builder: (context, params) => const HelpWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword2',
          path: '/forgotPassword2',
          builder: (context, params) => const ForgotPassword2Widget(),
        ),
        FFRoute(
          name: 'ForgotPassword3',
          path: '/forgotPassword3',
          builder: (context, params) => const ForgotPassword3Widget(),
        ),
        FFRoute(
          name: 'conversaAssistente',
          path: '/conversaAssistente',
          builder: (context, params) => const ConversaAssistenteWidget(),
        ),
        FFRoute(
          name: 'FirstAccessConfig',
          path: '/firstAccessConfig',
          builder: (context, params) => FirstAccessConfigWidget(
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'FinishAccessConfig',
          path: '/finishAccessConfig',
          builder: (context, params) => FinishAccessConfigWidget(
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'HomeBalao2',
          path: '/homeBalao2',
          builder: (context, params) => const HomeBalao2Widget(),
        ),
        FFRoute(
          name: 'Request',
          path: '/request',
          builder: (context, params) => const RequestWidget(),
        ),
        FFRoute(
          name: 'FirstService',
          path: '/firstService',
          builder: (context, params) => FirstServiceWidget(
            adicionadoPeloMais: params.getParam(
              'adicionadoPeloMais',
              ParamType.bool,
            ),
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'FirstPackage',
          path: '/firstPackage',
          builder: (context, params) => FirstPackageWidget(
            adicionadoPeloMais: params.getParam(
              'adicionadoPeloMais',
              ParamType.bool,
            ),
            originConfig: params.getParam(
              'originConfig',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ForceUpgrade',
          path: '/forceUpgrade',
          builder: (context, params) => const ForceUpgradeWidget(),
        )
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
            return '/homeBalao';
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
                    'assets/images/Splash.png',
                    fit: BoxFit.cover,
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
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
