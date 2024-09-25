import 'package:album_worldcup22/app/core/ui/styles/button_styles.dart';
import 'package:album_worldcup22/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.style,
      required this.labelStyle,
      required this.label,
      this.width,
      this.height,
      this.outline = false,
      this.onPressed});

  Button.primary(
      {super.key, required this.label, this.width, this.height, this.onPressed})
      : style = ButtonStyles.instance.primaryButton,
        labelStyle = TextStyles.instance.textSecondaryFontExtraBold,
        outline = false;

  final ButtonStyle style;
  final TextStyle labelStyle;
  final String label;
  final double? width;
  final double? height;
  final bool outline;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final labelText = Text(
      label,
      style: labelStyle,
      overflow: TextOverflow.ellipsis,
    );
    return SizedBox(
      width: width,
      height: height,
      child: outline
          ? OutlinedButton(
              onPressed: onPressed,
              style: style,
              child: labelText,
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: style,
              child: labelText,
            ),
    );
  }
}
