import 'package:album_worldcup22/app/core/ui/theme/theme_config.dart';
import 'package:album_worldcup22/app/pages/auth/login/login_page.dart';
import 'package:album_worldcup22/app/pages/home/home_page.dart';
import 'package:album_worldcup22/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AlbumWorldcupApp extends StatelessWidget {
  const AlbumWorldcupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "World Cup 2022",
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {"/": (_) => const SplashPage(),
      "/auth/login": (_)=> const LoginPage(),
      "/home": (_)=> const HomePage()},
    );
  }
}
