import 'package:album_worldcup22/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.icon, required this.onPressed});

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      shadowColor: Colors.grey.withOpacity(0.2),
      shape: const CircleBorder(),
      child: DecoratedBox(
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: context.colors.greyDark,
            )),
      ),
    );
  }
}
