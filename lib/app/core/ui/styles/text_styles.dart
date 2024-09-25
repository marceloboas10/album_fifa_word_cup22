import 'package:album_worldcup22/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self instance
  TextStyles._();
  static TextStyles get instance => _instance ??= TextStyles._();

  String get primaryFont => "Poppins";
  String get secondaryFont => "MPlus1P";

  //primary font
  TextStyle get textPrimaryFontRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: primaryFont);
  TextStyle get textPrimaryFontMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: primaryFont);
  TextStyle get textPrimaryFontSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: primaryFont);
  TextStyle get textPrimaryFontBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: primaryFont);
  TextStyle get textPrimaryFontExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: primaryFont);

  //secondary font
  TextStyle get textSecondaryFontRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: secondaryFont);
  TextStyle get textSecondaryFontMedium =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: secondaryFont);
  TextStyle get textSecondaryFontBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: secondaryFont);
  TextStyle get textSecondaryFontExtraBold =>
      TextStyle(fontWeight: FontWeight.w800, fontFamily: secondaryFont);

  TextStyle get labelTextField =>
      textSecondaryFontRegular.copyWith(color: ColorsApp.instance.greyDark);

  TextStyle get textSecondaryFontExtraBoldPrimaryColor =>
      textPrimaryFontExtraBold.copyWith(color: ColorsApp.instance.primary);
}

extension TextStylesExtentions on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
