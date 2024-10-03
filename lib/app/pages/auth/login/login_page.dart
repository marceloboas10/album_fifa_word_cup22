import 'package:album_worldcup22/app/core/ui/styles/button_styles.dart';
import 'package:album_worldcup22/app/core/ui/styles/colors_app.dart';
import 'package:album_worldcup22/app/core/ui/styles/text_styles.dart';
import 'package:album_worldcup22/app/core/ui/widget/button.dart';
import 'package:album_worldcup22/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:album_worldcup22/app/pages/auth/login/view/login_view_impl.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.presenter});

  final LoginPresenter presenter;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoginViewImpl {
  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Form(
          key: formKey,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_login.png'),
                  fit: BoxFit.cover),
            ),
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height *
                            (MediaQuery.sizeOf(context).width > 350
                                ? .30
                                : .25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            "Login",
                            style: context.textStyles.titleWhite,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: emailEC,
                        validator: Validatorless.multiple([
                          Validatorless.required("Obrigatório"),
                          Validatorless.email('E-mail inválido')
                        ]),
                        decoration: const InputDecoration(
                            label: Text("E-mail"),
                            floatingLabelBehavior: FloatingLabelBehavior.never),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordEC,
                        obscureText: true,
                        validator: Validatorless.multiple([
                          Validatorless.required("Obrigatório"),
                          Validatorless.min(
                              6, "Senha deve conter pelo menos 6 caracteres")
                        ]),
                        decoration: const InputDecoration(
                            label: Text("Senha"),
                            floatingLabelBehavior: FloatingLabelBehavior.never),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          "Esqueceu a senha?",
                          style: context.textStyles.textSecondaryFontMedium
                              .copyWith(color: context.colors.yellow),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Button(
                        width: MediaQuery.sizeOf(context).width * .9,
                        style: context.buttonStyles.yellowButton,
                        labelStyle: context
                            .textStyles.textSecondaryFontExtraBoldPrimaryColor,
                        label: "Entrar",
                        onPressed: () {
                          final valid =
                              formKey.currentState?.validate() ?? false;
                          if (valid) {
                            showLoader();
                            widget.presenter
                                .login(emailEC.text, passwordEC.text);
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Spacer(),
                      Text.rich(
                        style: context.textStyles.textSecondaryFontMedium
                            .copyWith(color: Colors.white),
                        TextSpan(
                          text: 'Não possui conta? ',
                          children: [
                            TextSpan(
                                text: "Cadastre-se",
                                style: context
                                    .textStyles.textSecondaryFontMedium
                                    .copyWith(color: context.colors.yellow),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.of(context)
                                      .pushNamed('/auth/register')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
