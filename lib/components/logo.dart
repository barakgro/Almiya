import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 110,
          child: Image(
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}