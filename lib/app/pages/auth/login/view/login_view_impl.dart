import 'package:album_worldcup22/app/core/ui/helper/loader.dart';
import 'package:album_worldcup22/app/core/ui/helper/messages.dart';
import 'package:album_worldcup22/app/pages/auth/login/login_page.dart';
import 'package:album_worldcup22/app/pages/auth/login/view/login_view.dart';
import 'package:flutter/material.dart';

abstract class LoginViewImpl extends State<LoginPage>
    with Messages<LoginPage>, Loader<LoginPage>
    implements LoginView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void sucess() {
    hideLoader();
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
}
