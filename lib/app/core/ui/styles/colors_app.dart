import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self instance
  ColorsApp._();
  static ColorsApp get instance => _instance ??= ColorsApp._();

  Color get primary => const Color(0xFF791435);
  Color get secondary => const Color(0xFFFDCE50);
  Color get yellow => const Color(0xFFFDCE50);
  Color get grey => const Color(0xFFCCCCCC);
  Color get greyDark => const Color(0xFF999999);
}

extension ColorsAppExtention on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
