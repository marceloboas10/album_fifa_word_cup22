import 'package:album_worldcup22/app/core/ui/styles/colors_app.dart';
import 'package:album_worldcup22/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final _defaultInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: ColorsApp.instance.greyDark, width: 1));

  static final theme = ThemeData(
    useMaterial3: false,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyles.instance.textPrimaryFontBold
            .copyWith(color: Colors.black, fontSize: 18),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      primaryColor: ColorsApp.instance.primary,
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsApp.instance.primary,
          primary: ColorsApp.instance.primary,
          secondary: ColorsApp.instance.secondary),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          contentPadding: const EdgeInsets.all(13),
          border: _defaultInputBorder,
          focusedBorder: _defaultInputBorder,
          labelStyle: TextStyles.instance.labelTextField));
}
