import 'package:flutter/material.dart';
import 'package:palavras_aleatorias/widgets/my_input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .33,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Image(
              image: AssetImage(
                "assets/images/logo.png",
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                ),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    Center(
                      child: Text(
                        "Login",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    MyInputField(
                      label: "Email",
                      placeholder: "Digite seu e-mail",
                    ),
                    MyInputField(
                      label: "Senha",
                      placeholder: "Digite sua senha",
                      isPassword: true,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
