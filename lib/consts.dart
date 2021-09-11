import 'package:flutter/material.dart';

const Color themeColor = Color(0xff542d53);
const Color lightBlue = Color(0xffc8e3e4);
const Color lightPurple = Color(0xfff0afdc);
const Color buttonTextColor = Color(0xfffff9c4);
const double titleSize = 22.0;
const double fontSize = 18.0;
const LinearGradient menueOptionGradient = LinearGradient(
  colors: <Color>[
    Color(0xff4166a2),
    Color(0xff985fbc),
    Color(0xffd46bbd),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

final TextStyle boldStyle = new TextStyle(
    fontWeight: FontWeight.bold, fontSize: fontSize, color: themeColor);
final TextStyle baseStyle =
    new TextStyle(fontSize: fontSize, color: themeColor);
final TextStyle titleStyle = new TextStyle(
    fontSize: titleSize, fontWeight: FontWeight.bold, color: themeColor);

final Divider line = Divider(
  color: themeColor,
  height: 25,
  thickness: 1,
  indent: 0,
  endIndent: 0,
);
