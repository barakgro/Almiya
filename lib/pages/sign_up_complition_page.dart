import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/button.dart';
import 'package:Almiya/components/logo.dart';
import 'package:Almiya/components/text_input.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/almiya_icons.dart';

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
            icon: Almiya.face,
            hintText: "שם משתמשת",
          ),
          IconedTextField(
            icon: Icons.lock,
            hintText: "סיסמה",
            obscureText: true,
          ),
          IconedTextField(
            icon: Almiya.asterisk,
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
