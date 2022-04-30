// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:elvis_taxi/utils/colors.dart' as utils;

class LoginPage extends StatefulWidget {
  //const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), //raya superior
      body: Column(
        children:[
         _bannerApp()
        ],
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
