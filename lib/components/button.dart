import 'package:Almiya/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    @required this.text,
  });

  final String text;
  final Color color = darkPurple;


  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        height: 65,
        padding: EdgeInsets.all(7.0),
        child: RaisedButton(
          child: Text(
            this.text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          textColor: Colors.yellow[100],
          color: this.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          onPressed: () {
            print("yay");
          },
        ));
  }
}
