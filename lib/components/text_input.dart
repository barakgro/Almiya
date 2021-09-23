import 'package:almiya/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconedTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final double width;
  final Color color = themeColor;
  final bool obscureText;
  final TextEditingController controller;
  
  IconedTextField({
    required this.icon,
    required this.hintText,
    required this.controller,
    this.width = 0,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    var width = this.width == 0 ? MediaQuery.of(context).size.width * 0.85 : this.width;

    return Container(
        width: width,
        height: 65,
        padding: EdgeInsets.only(top:7.0, bottom:7.0),
        child: TextField(
          controller: this.controller,
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
