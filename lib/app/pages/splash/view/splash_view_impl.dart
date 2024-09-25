import 'package:album_worldcup22/app/core/ui/helper/loader.dart';
import 'package:album_worldcup22/app/pages/splash/splash_page.dart';
import 'package:album_worldcup22/app/pages/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

abstract class SplashViewImpl extends State<SplashPage>
    with Loader<SplashPage>
    implements SplashView {
  @override
  void logged(bool isLogged) {}
}
