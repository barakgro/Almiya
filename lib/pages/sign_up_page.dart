import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/button.dart';
import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/components/text_input.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/almiya_icons.dart';

class SignUpPage extends StatelessWidget {
  final TextSpan pageText = new TextSpan(
    style: new TextStyle(
      fontSize: 18.0,
      color: darkPurple,
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
              Container(
                height: 110,
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: RichText(
              text: this.pageText,
              maxLines: 10,
              textDirection: TextDirection.rtl,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Material(
                  type: MaterialType.transparency,
                  child: IconedTextField(
                    icon: Almiya.face,
                    hintText: "קוראים לי",
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Material(
                  type: MaterialType.transparency,
                  child: IconedTextField(
                    icon: Icons.phone_iphone,
                    hintText: "טלפון נייד",
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Material(
                    type: MaterialType.transparency,
                    child: Button(
                      text: "המשיכי",
                      onPressed: () =>
                          Navigator.pushNamed(context, '/signUpComplitionPage'),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
