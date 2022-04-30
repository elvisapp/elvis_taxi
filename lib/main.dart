import 'package:elvis_taxi/pages/home/home_page.dart';
import 'package:elvis_taxi/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:elvis_taxi/utils/colors.dart' as utils;

void main() {
 runApp( MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // se quita la etiqueta en la esquina
      title: 'elvis.com',
      initialRoute: 'home',
      theme: ThemeData(
        fontFamily: 'NimbusSans',
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF222327),
          elevation: 0,
        ),

      ),
      routes: {
        'home' : (BuildContext context) => HomePage(),
        'login' : (BuildContext context) => LoginPage(),
      },
    );
  }
}
