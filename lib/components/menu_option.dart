import 'package:Almiya/components/gradient_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  final Color darkPurple = Color(0xff542d53);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          IconButton(
            iconSize: this.size,
            icon: GradientIcon(
              this.icon,
              this.size,
              LinearGradient(
                colors: <Color>[
                  Color(0xff4166a2),
                  Color(0xff985fbc),
                  Color(0xffd46bbd),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            onPressed: () => Navigator.pushNamed(context, this.url),
          ),
          Container(
            width: this.size * 1.2,
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
      ),
    );
  }
}
