import 'package:flutter/material.dart';

class HomeController {

  BuildContext context; // se tiene que colocar el signo de pregunta evitar el error

  Future init(BuildContext context) {
    this.context = context;

  }

  void goToLoginPage(){ //metodo para ir a otra pagina
    Navigator.pushNamed(context, 'login');

  }
}