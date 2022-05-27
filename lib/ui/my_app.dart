import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_boiler/constants/app_theme.dart';
import 'package:flutter_boiler/constants/assets.dart';
import 'package:flutter_boiler/constants/strings.dart';
import 'package:flutter_boiler/stores/theme/theme_store.dart';
import 'package:flutter_boiler/stores/user/user_store.dart';
import 'package:flutter_boiler/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../generated/codegen_loader.g.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // Create your store as a final variable in a base Widget. This works better
  // with Hot Reload than creating it directly in the `build` function.
  final UserStore userStore = GetIt.I<UserStore>();
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('da', 'DK')],
      path: Assets.langs,
      fallbackLocale: Locale('en', "US"),
      assetLoader: CodegenLoader(),
      child: Observer(
        name: 'global-observer',
        builder: (context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: Strings.appName,
            theme: GetIt.I<ThemeStore>().darkMode
                ? AppThemeData.darkThemeData
                : AppThemeData.lightThemeData,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            routeInformationParser: _routes.routeInformationParser,
            routerDelegate: _routes.routerDelegate,
          );
        },
      ),
    );
  }

  late final _routes = GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: $appRoutes,
    initialLocation: SplashRoute().location,
    refreshListenable: userStore,
    redirect: (state) {
      final bool loggedIn = userStore.isLoggedIn;
      // check just the subloc in case there are query parameters
      final String loginLoc = const LoginRoute().location;
      final bool goingToLogin = state.subloc == loginLoc;
      // the user is not logged in and not headed to /login, they need to login
      if (!loggedIn && !goingToLogin) {
        return LoginRoute().location;
      }

      // the user is logged in and headed to /login, no need to login again
      if (loggedIn && goingToLogin) {
        return const HomeRoute().location;
      }

      // no need to redirect at all
      return null;
    },
  );
}
