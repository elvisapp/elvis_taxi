// ignore_for_file: prefer_const_constructors
import 'package:elvis_taxi/src/pages/login/login_controller.dart';
import 'package:elvis_taxi/src/widgets/button_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
//import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:elvis_taxi/src/utils/colors.dart' as utils;


class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  LoginController _con = new LoginController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('INIT STATE');
    
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(BuildContext);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('METODO BUILD');

    return Scaffold(
      appBar: AppBar(), //raya superior
      body: SingleChildScrollView(
        child: Column(
          children:[
           _bannerApp(),
            _textDescription(),
            _textLogin(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.17),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _textDontHaveAccount()
          ],
        ),
      ),
    );
  }



  // De aqui para abajo se escriben los metodos


  Widget _textDontHaveAccount() {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Text(
        'No tienes cuenta?',
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey
        ),
        ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: ButtonApp(
        onPressed: _con.login,
        text: 'Iniciar sesion',
        color: utils.Colors.taxiColor,
        textColor: Colors.white,
        //icon: Icons.xxxx, si activo este comando puedo cambiar el icono solo colocando el nombre en las xxx
      ),
    );
  }

  Widget _textFieldEmail() {   // para introducir e-mail ojo
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.emailController,
        decoration: InputDecoration(
          hintText: 'correo@gmail.com',
          labelText: 'Correo electronico',
          suffixIcon: Icon( // iconos recuerdas que hay varios
            Icons.email_outlined,
            color: utils.Colors.taxiColor,

          )
        ),
      ),
    );
  }


  Widget _textFieldPassword() {   // para introducir e-mail ojo
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        obscureText: true, //metodo para esconder lo que se escribe
        controller: _con.passwordController,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          suffixIcon: Icon( // iconos recuerdas que hay varios
            Icons.lock_open_outlined,
            color: utils.Colors.taxiColor,
          )
        ),
      ),
    );
  }

  Widget _textDescription() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10), // margen para todos los lados aula 16 tipos de margen minuto 5:47
      child: Text(
        'Continua con tu',
        style: TextStyle(
          color: Colors.black54,
              fontFamily: 'NimbusSans'
        ),
      ),
    );
  }

  Widget _textLogin() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.symmetric(horizontal: 30,),
      child: Text(
           'Login',
          style: TextStyle(
            color: Colors.black,
                fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
      ),
    );
  }

  Widget _bannerApp(){
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        color: utils.Colors.taxiColor,
        height: MediaQuery.of(context).size.height * 0.22,
        child: Row(//lista
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,//margenes
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),

            Text(
              'Facil y Rapido',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w700 //se puede colocar bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
