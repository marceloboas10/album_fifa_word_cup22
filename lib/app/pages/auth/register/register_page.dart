import 'package:album_worldcup22/app/core/ui/styles/button_styles.dart';
import 'package:album_worldcup22/app/core/ui/styles/text_styles.dart';
import 'package:album_worldcup22/app/core/ui/widget/button.dart';
import 'package:album_worldcup22/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:album_worldcup22/app/pages/auth/register/view/register_view_impl.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.presenter});

  final RegisterPresenter presenter;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends RegisterViewImpl {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final confirmPasswordEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose();
    emailEC.dispose();
    passwordEC.dispose();
    confirmPasswordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 106.82,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bola.png'),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Cadastrar Usuário",
                style: context.textStyles.titleBlack,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameEC,
                      validator: Validatorless.required("Obrigatório"),
                      decoration:
                          const InputDecoration(label: Text("Nome completo*")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailEC,
                      validator: Validatorless.multiple([
                        Validatorless.required("Obrigatório"),
                        Validatorless.email("E-mail inválido")
                      ]),
                      decoration: const InputDecoration(label: Text("E-mail*")),
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
                            6, "Senha deve ter no mínimo 6 caracteres")
                      ]),
                      decoration: const InputDecoration(label: Text("Senha*")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: confirmPasswordEC,
                      obscureText: true,
                      validator: Validatorless.multiple([
                        Validatorless.required("Obrigatório"),
                        Validatorless.min(
                            6, "Senha deve ter no mínimo 6 caracteres"),
                        Validatorless.compare(
                            passwordEC, "Senhas não conferem"),
                      ]),
                      decoration: const InputDecoration(
                          label: Text("Confirmar senha*")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * .95,
                        onPressed: () {
                          final formValid = formKey.currentState!.validate();

                          if (formValid) {
                            widget.presenter.register(
                                name: nameEC.text,
                                email: emailEC.text,
                                password: passwordEC.text,
                                confirmPassword: confirmPasswordEC.text);
                          }
                        },
                        style: context.buttonStyles.primaryButton,
                        labelStyle: context.textStyles.textPrimaryFontBold,
                        label: "Cadastrar"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
