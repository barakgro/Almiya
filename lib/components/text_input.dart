import 'package:Almiya/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconedTextField extends StatelessWidget {
  IconedTextField({
    @required this.icon,
    @required this.hintText,
    this.width = 320,
    this.obscureText = false,
  });

  final IconData icon;
  final String hintText;
  final double width;
  final Color color = darkPurple;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        height: 65,
        padding: EdgeInsets.all(7.0),
        child: TextField(
          obscureText: this.obscureText,
          autocorrect: true,
          textDirection: TextDirection.rtl,
          textAlignVertical: TextAlignVertical.bottom,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: this.hintText,
            suffixIcon: Icon(
              this.icon,
              color: this.color,
              size: 35,
            ),
            hintStyle: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.transparent, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ));
  }
}
