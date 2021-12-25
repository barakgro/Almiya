import 'package:flutter/material.dart';

import '../consts.dart';

class InformationOptionData extends StatelessWidget {
  final String title;

  InformationOptionData({required this.title});

  @override
  Widget build(BuildContext context) {
    var subtitle = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            "נושא 1 | נושא 2 | נושא 3",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ],
    );

    // var line = Divider(
    //   color: themeColor,
    //   height: 25,
    //   thickness: 1,
    //   indent: 0,
    //   endIndent: 0,
    // );

    return Column(
      children: [
        Material(
          type: MaterialType.transparency,
          child: Text(
            this.title,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: themeColor, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        line,
        subtitle,
      ],
    );
  }
}
