import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/button.dart';
import 'package:Almiya/components/logo.dart';
import 'package:Almiya/components/text_input.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/almiya_icons.dart';

class SignUpPage extends StatelessWidget {
  final TextSpan pageText = new TextSpan(
    style: new TextStyle(
      fontSize: fontSize,
      color: themeColor,
    ),
    children: <TextSpan>[
      new TextSpan(
        text:
            "אנחנו יודעות שהפרטיות שלך חשובה לך, תכף גם נאפשר לך ליצור סיסמה לאפליקציה, שתהיי יותר רגועה. בכל זאת, בכדי לעזור לך נשמח אם תכניסי שם פרטי ומספר פלאפון. ",
      ),
      new TextSpan(
        text: "\n\nלא נעשה בהם שימוש בלי הסכמתך",
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
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
            child: RichText(
              text: this.pageText,
              textDirection: TextDirection.rtl,
            ),
          ),
          IconedTextField(
            icon: Almiya.face,
            hintText: "קוראים לי",
          ),
          IconedTextField(
            icon: Icons.phone_iphone,
            hintText: "טלפון נייד",
          ),
          Button(
            text: "המשיכי",
            onPressed: () =>
                Navigator.pushNamed(context, '/signUpComplitionPage'),
          ),
        ],
      ),
    );
  }
}
