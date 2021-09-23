import 'package:almiya/components/almiya_page.dart';
import 'package:almiya/components/button.dart';
import 'package:almiya/components/logo.dart';
import 'package:almiya/components/text_input.dart';
import 'package:almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:almiya/almaya_icons.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpPage> {
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

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UsernameModel>(builder: (context, usernameModel, child) {
      void continueSignUp() {
        usernameModel.setUsername(usernameController.text);
        Navigator.pushNamed(context, '/signUpComplitionPage');
      }

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
              icon: Almaya.face,
              hintText: "קוראים לי",
              controller: usernameController,
            ),
            IconedTextField(
              icon: Icons.phone_iphone,
              hintText: "טלפון נייד",
              controller: phoneController,
            ),
            Button(
              text: "המשיכי",
              onPressed: continueSignUp,
            ),
          ],
        ),
      );
    });
  }
}
