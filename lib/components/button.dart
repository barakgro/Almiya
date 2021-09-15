import 'dart:ui';

import 'package:almiya/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  Button({
    required this.text,
    this.width = 0,
    this.color = themeColor,
    this.textColor = buttonTextColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var width =
        this.width == 0 ? MediaQuery.of(context).size.width * 0.85 : this.width;

    var buttonText = Text(
      this.text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );

    var button = ElevatedButton(
      child: buttonText,
      onPressed: this.onPressed,
    );

    return Container(
      width: width,
      height: 65,
      padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
      child: button,
    );
  }
}
