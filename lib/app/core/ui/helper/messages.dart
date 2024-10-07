import 'package:album_worldcup22/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void showError(String message) {
    showTopSnackBar(
      Overlay.of(context),
      animationDuration: const Duration(seconds: 4),
      CustomSnackBar.error(
        message: message,
        backgroundColor: ColorsApp.instance.primary,
      ),
    );
  }

  void showInfo(String message) {
    showTopSnackBar(
      Overlay.of(context),
      animationDuration: const Duration(seconds: 4),
      CustomSnackBar.info(
        message: message,
      ),
    );
  }

  void showSucess(String message) {
    showTopSnackBar(
      Overlay.of(context),
      animationDuration: const Duration(seconds: 4),
      CustomSnackBar.success(
        message: message,
      ),
    );
  }
}
