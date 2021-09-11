import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/button.dart';
import 'package:Almiya/components/text_input.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/almiya_icons.dart';

class SignUpComplitionPage extends StatelessWidget {
  final TextSpan pageText = new TextSpan(
    style: new TextStyle(
      fontSize: 18.0,
      color: darkPurple,
    ),
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
            child: Column(
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: Text(
                    "תודה!",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: darkPurple,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: darkPurple,
                  height: 25,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                ),
                RichText(
                  text: this.pageText,
                  maxLines: 10,
                  textDirection: TextDirection.rtl,
                ),
              ],
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
                    hintText: "שם משתמשת",
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
                    icon: Icons.lock,
                    hintText: "סיסמה",
                    obscureText: true,
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
                    icon: Almiya.asterisk,
                    hintText: "אימות סיסמה",
                    obscureText: true,
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
                      text: "הירשמי",
                      onPressed: () =>
                          Navigator.pushNamed(context, '/homePage'),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
