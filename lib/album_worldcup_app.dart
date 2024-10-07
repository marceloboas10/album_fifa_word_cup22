import 'package:album_worldcup22/app/core/rest/custom_dio.dart';
import 'package:album_worldcup22/app/core/ui/global/global_context.dart';
import 'package:album_worldcup22/app/core/ui/global/global_context_impl.dart';
import 'package:album_worldcup22/app/core/ui/theme/theme_config.dart';
import 'package:album_worldcup22/app/pages/auth/login/login_route.dart';
import 'package:album_worldcup22/app/pages/auth/register/view/register_route.dart';
import 'package:album_worldcup22/app/pages/home/home_page.dart';
import 'package:album_worldcup22/app/pages/splash/splash_route.dart';
import 'package:album_worldcup22/app/repository/auth/auth_repository.dart';
import 'package:album_worldcup22/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AlbumWorldcupApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();

  AlbumWorldcupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
        Bind.lazySingleton<GlobalContext>((_) =>
            GlobalContextImpl(navigatorKey: navigatorKey, )),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: "World Cup 2022",
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          "/": (_) => const SplashRoute(),
          "/auth/login": (_) => const LoginRoute(),
          "/auth/register": (_) => const RegisterRoute(),
          "/home": (_) => const HomePage()
        },
      ),
    );
  }
}
