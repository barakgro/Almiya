import 'package:Almiya/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    @required this.text,
    this.width = 320,
    @required this.onPressed,
  });

  final String text;
  final double width;
  final Function onPressed;
  final Color color = darkPurple;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
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
          onPressed: this.onPressed,
        ));
  }
}
