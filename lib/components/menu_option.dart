import 'package:Almiya/components/gradient_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts.dart';

class MenuOption extends StatelessWidget {
  MenuOption(
    this.title,
    this.icon,
    this.size,
    this.url,
  );

  final String title;
  final IconData icon;
  final double size;
  final String url;

  @override
  Widget build(BuildContext context) {
    var icon = IconButton(
      iconSize: this.size,
      icon: GradientIcon(
        this.icon,
        this.size,
        menueOptionGradient,
      ),
      onPressed: () => Navigator.pushNamed(context, this.url),
    );

    var text = Container(
      width: this.size * 1.2,
      child: Text(
        this.title,
        style: TextStyle(
          color: themeColor,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );

    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          icon,
          text,
        ],
      ),
    );
  }
}
