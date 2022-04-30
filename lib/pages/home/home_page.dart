// ignore_for_file: prefer_const_constructors

import 'package:elvis_taxi/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget { //se utiliza para un estado estatico
 //const HomePage({Key? key}) : super(key: key);
  HomeController _com = new HomeController();

  @override
  Widget build(BuildContext context) {
    _com.init(context);// inicializando nuestro controlador

    return Scaffold(
      body: SafeArea( //margensuperior
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight, // parametro superior
              end: Alignment.bottomLeft,
              colors: [Colors.black87, Colors.blue, Colors.yellow]
            )
          ),
          child: Column(
            children: [
              _bannerApp(context),
              SizedBox(height: 50),
              _textSelectYourRol(),
              SizedBox(height: 30,),
              _imageTypeUser(context, 'assets/img/pasajero.png'),
              SizedBox(height: 10,),
              _textTypeUser('Cliente'),
              SizedBox(height: 30,),
              _imageTypeUser(context, 'assets/img/driver.png'),
              SizedBox(height: 10),
              _textTypeUser('Conductor')

            ],
          ),
        ),
      ),
    );
  }

  Widget _bannerApp(BuildContext context){
    return ClipPath(
      clipper: DiagonalPathClipperTwo(),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(//lista
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,//margenes
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),
            // ignore: prefer_const_constructors
            Text(
              'Facil y Rapido',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 22,
                  fontWeight: FontWeight.w700 //se puede colocar bold
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _textSelectYourRol(){
    return Text(
      'SELECCIONA TU ROL',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: 'OneDay',
      ),
    );
  }

 Widget _imageTypeUser(BuildContext context, String image) { //con raya al piso es un metodo privado
   return GestureDetector(
     onTap: _com.goToLoginPage,
     child: CircleAvatar(//hace circulara las imagenes y propiedades
           backgroundImage: AssetImage(image),
           radius: 50,
           backgroundColor: Colors.blue[800],
         ),
   );
 }

  Widget _textTypeUser(String typeUser) { //con raya al piso es un metodo privado
    return Text(
      typeUser,
      style: TextStyle(
          color: Colors.white,
          fontSize: 16
      ),
    );
  }

}
