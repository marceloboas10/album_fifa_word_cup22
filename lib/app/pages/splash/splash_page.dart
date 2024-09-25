import 'package:album_worldcup22/app/core/ui/helper/loader.dart';
import 'package:album_worldcup22/app/core/ui/helper/messages.dart';
import 'package:album_worldcup22/app/core/ui/styles/button_styles.dart';
import 'package:album_worldcup22/app/core/ui/styles/colors_app.dart';
import 'package:album_worldcup22/app/core/ui/styles/text_styles.dart';
import 'package:album_worldcup22/app/core/ui/theme/theme_config.dart';
import 'package:album_worldcup22/app/core/ui/widget/button.dart';
import 'package:album_worldcup22/app/core/ui/widget/rounded_button.dart';
import 'package:album_worldcup22/app/pages/splash/view/splash_view_impl.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.instance.primary,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_splash.png'),
              fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).height * .08),
                  child: Image.asset(
                    'assets/images/fifa_logo.png',
                    height: MediaQuery.sizeOf(context).height * .25,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.sizeOf(context).height * .19),
                  child: Button(
                      onPressed: () {},
                      width: MediaQuery.sizeOf(context).width * .9,
                      style: context.buttonStyles.yellowButton,
                      labelStyle: context
                          .textStyles.textSecondaryFontExtraBoldPrimaryColor,
                      label: "Acessar"),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset("assets/images/bandeiras.png"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
