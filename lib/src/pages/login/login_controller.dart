import 'package:elvis_taxi/src/providers/atuh_provider.dart';
import 'package:flutter/material.dart';

class LoginController {

  BuildContext context;

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  AuthProvider _authProvider;


  Future init(BuildContext) {
    this.context = context;
    _authProvider = new AuthProvider();
  }

  void login() async{
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email: $email');
    print('Password: $password');

    try {
      bool isLogin = await _authProvider.login(email, password);

      if (isLogin) {
        print('El usuario esta logeado');
      }
      else {
        print('El usuario no se pudo autenticar');
      }

    } catch(error) {
      print('Error: $error');
    }

  }

}