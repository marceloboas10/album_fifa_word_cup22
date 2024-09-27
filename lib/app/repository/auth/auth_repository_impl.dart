import 'dart:developer';
import 'package:album_worldcup22/app/core/exception/repository_exception.dart';
import 'package:album_worldcup22/app/core/rest/custom_dio.dart';
import 'package:album_worldcup22/app/models/register_user_model.dart';
import 'package:album_worldcup22/app/repository/auth/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImpl({required this.dio});

  @override
  Future<String> login({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    try {
      await dio.unAuth().post(
            '/api/register',
            data: registerModel.toMap(),
          );
    } on DioException catch (e, s) {
      log('Erro ao registrar o usuário.', error: e, stackTrace: s);
      throw RepositoryException(message: "Erro ao registrar usuário");
    }
  }
}
