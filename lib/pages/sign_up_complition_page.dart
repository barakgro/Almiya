import 'package:almiya/components/almiya_page.dart';
import 'package:almiya/components/button.dart';
import 'package:almiya/components/logo.dart';
import 'package:almiya/components/text_input.dart';
import 'package:almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:almiya/almaya_icons.dart';

class SignUpComplitionPage extends StatelessWidget {
  final TextSpan pageText = new TextSpan(
    style: baseStyle,
    children: <TextSpan>[
      new TextSpan(
          text:
              "אנחנו שמחות להכיר אותך, אורנית\nכדי לאפשר לך יותר פרטיות ולזכור יחד איתך איפה היית כשאת יוצאת וחוזרת, אנא צרי חשבון:"),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return AlmiyaPage(
      child: Column(
        children: [
          Row(
            children: [
              Logo(),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: Text(
                    "תודה!",
                    textDirection: TextDirection.rtl,
                    style: titleStyle,
                  ),
                ),
                line,
                RichText(
                  text: this.pageText,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          IconedTextField(
            icon: Almaya.face,
            hintText: "שם משתמשת",
          ),
          IconedTextField(
            icon: Icons.lock,
            hintText: "סיסמה",
            obscureText: true,
          ),
          IconedTextField(
            icon: Almaya.asterisk,
            hintText: "אימות סיסמה",
            obscureText: true,
          ),
          Button(
            text: "הירשמי",
            onPressed: () => Navigator.pushNamed(context, '/homePage'),
          ),
        ],
      ),
    );
  }
}
