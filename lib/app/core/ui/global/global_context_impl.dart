import 'package:album_worldcup22/app/core/ui/global/global_context.dart';
import 'package:album_worldcup22/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class GlobalContextImpl implements GlobalContext {
  final GlobalKey<NavigatorState> navigatorKey;
  

  GlobalContextImpl({required this.navigatorKey});

  @override
  Future<void> loginExpire() async {
    final spToken = await SharedPreferences.getInstance();
    spToken.clear();

    showTopSnackBar(
       navigatorKey.currentState!.overlay!,
        CustomSnackBar.error(
          message: "Login Expirado",
          backgroundColor: ColorsApp.instance.primary,
        ),);
    navigatorKey.currentState!.pushNamedAndRemoveUntil("/auth/login", (route)=> false);
  }
}
