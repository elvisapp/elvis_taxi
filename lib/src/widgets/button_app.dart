import 'package:flutter/material.dart';
import 'package:elvis_taxi/src/utils/colors.dart' as utils;



class ButtonApp extends StatelessWidget {
  //const ButtonApp({Key? key}) : super(key: key);

  Color color;
  Color textColor;
  String text;
  IconData icon;

  ButtonApp({
    this.color = Colors.black,
    this.textColor = Colors.white,
    this.icon = Icons.arrow_forward_ios,
    @required this.text//texto obligatorio

});


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {},
        color: color,
        textColor: textColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                    child: Text(
                        text,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              child: CircleAvatar(
                radius: 15,
                child: Icon(
                  icon,
                  color: utils.Colors.taxiColor,
                ),
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}