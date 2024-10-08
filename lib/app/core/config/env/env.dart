import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;

  Env._();
  static Env get instance => _instance ??= Env._();

  Future<void> load() => dotenv.load(fileName: '.env');

  String? operator [](String key) => dotenv.env[key];
}
