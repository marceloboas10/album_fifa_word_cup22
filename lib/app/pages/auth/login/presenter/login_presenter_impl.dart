import 'dart:developer';
import 'package:album_worldcup22/app/core/exception/unauthorized_exception.dart';
import 'package:album_worldcup22/app/services/login/login_service.dart';
import 'package:album_worldcup22/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:album_worldcup22/app/pages/auth/login/view/login_view.dart';

class LoginPresenterImpl implements LoginPresenter {
  LoginPresenterImpl({required this.loginService});

  final LoginService loginService;
  late final LoginView _view;

  @override
  Future<void> login(String email, String password) async {
    try {
      await loginService.execute(email: email, password: password);
      _view.sucess();
    } on UnauthorizedException {
      _view.error("Usuário ou senha inválidos");
    } catch (e, s) {
      log('Erro ao realizar o login', error: e, stackTrace: s);
      _view.error("Erro ao realizar o login");
    }
  }

  @override
  set view(LoginView view) => _view = view;
}
