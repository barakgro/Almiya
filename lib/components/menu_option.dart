import 'package:Almiya/components/gradient_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget {
  MenuOption(
    this.title,
    this.icon,
    this.size,
  );

  final String title;
  final IconData icon;
  final double size;

  final Color darkPurple = Color(0xff542d53);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientIcon(
          this.icon,
          this.size,
          LinearGradient(
            colors: <Color>[
              Color(0xff4166a2),
              Color(0xff985fbc),
              Color(0xffd46bbd),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        Container(
          width: this.size*1.2,
          child: Text(
            this.title,
            style: TextStyle(
              color: darkPurple,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ),
      ],
    );
  }
}
