import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double optionSize = 90;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.15,
      child: Image(
        image: AssetImage("assets/images/logo.png"),
        fit: BoxFit.fill,
      ),
    );
  }
}
