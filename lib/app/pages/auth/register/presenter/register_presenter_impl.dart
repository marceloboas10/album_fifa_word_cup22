import 'dart:developer';
import 'package:album_worldcup22/app/models/register_user_model.dart';
import 'package:album_worldcup22/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:album_worldcup22/app/pages/auth/register/view/register_view.dart';
import 'package:album_worldcup22/app/repository/auth/auth_repository.dart';

class RegisterPresenterImpl implements RegisterPresenter {
  final AuthRepository authRepository;
  late RegisterView _view;

  RegisterPresenterImpl({required this.authRepository});

  @override
  Future<void> register(
      {required name,
      required email,
      required password,
      required confirmPassword}) async {
    final RegisterUserModel registerUserModel = RegisterUserModel(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword);

    try {
      await authRepository.register(registerUserModel);
      _view.registerSuccess();
    } catch (e, s) {
      log("Erro ao cadastrar usuário", error: e, stackTrace: s);
      _view.registerError();
    }
  }

  @override
  set view(RegisterView view) => _view = view;
}
