import 'package:album_worldcup22/app/core/ui/styles/colors_app.dart';
import 'package:album_worldcup22/app/core/ui/styles/text_styles.dart';

import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;
  // Avoid self instance
  ButtonStyles._();
  static ButtonStyles get instance => _instance ??= ButtonStyles._();

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.instance.textSecondaryFontExtraBold
          .copyWith(fontSize: 14));

  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: ColorsApp.instance.yellow)),
      textStyle: TextStyles.instance.textSecondaryFontExtraBold
          .copyWith(fontSize: 14));

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle: TextStyles.instance.textSecondaryFontExtraBold
          .copyWith(fontSize: 14));

  ButtonStyle get primaryOutlineButton => OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: ColorsApp.instance.primary)),
      textStyle: TextStyles.instance.textSecondaryFontExtraBold
          .copyWith(fontSize: 14));
}

extension ButtonStylesExtentions on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.instance;
}
