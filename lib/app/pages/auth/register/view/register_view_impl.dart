import 'package:album_worldcup22/app/core/ui/helper/loader.dart';
import 'package:album_worldcup22/app/core/ui/helper/messages.dart';
import 'package:album_worldcup22/app/pages/auth/register/register_page.dart';
import 'package:album_worldcup22/app/pages/auth/register/view/register_view.dart';
import 'package:flutter/widgets.dart';

abstract class RegisterViewImpl extends State<RegisterPage>
    with Messages<RegisterPage>, Loader<RegisterPage>
    implements RegisterView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void registerError([String? message]) {
    hideLoader();
    showError(message ?? "Erro ao registrar usuário");
  }

  @override
  void registerSuccess() {
    hideLoader();
    showSucess("Usuário cadastrado com sucesso");
    Navigator.of(context).pop();
  }
}
