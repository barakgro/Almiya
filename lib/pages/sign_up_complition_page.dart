import 'package:almiya/components/almiya_page.dart';
import 'package:almiya/components/button.dart';
import 'package:almiya/components/logo.dart';
import 'package:almiya/components/text_input.dart';
import 'package:almiya/consts.dart';
import 'package:almiya/pages/main.dart';
import 'package:flutter/material.dart';
import 'package:almiya/almaya_icons.dart';
import 'package:provider/provider.dart';

class SignUpComplitionPage extends StatefulWidget {
  const SignUpComplitionPage({Key? key}) : super(key: key);

  @override
  SignUpComplitionState createState() => SignUpComplitionState();
}

class SignUpComplitionState extends State<SignUpComplitionPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordCheckController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    passwordCheckController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UsernameModel>(builder: (context, usernameModel, child) {
      TextSpan pageText = new TextSpan(
        style: baseStyle,
        children: <TextSpan>[
          new TextSpan(
              text: "אנחנו שמחות להכיר אותך, " + usernameModel.username +
                  "\nכדי לאפשר לך יותר פרטיות ולזכור יחד איתך איפה היית כשאת יוצאת וחוזרת, אנא צרי חשבון:"),
        ],
      );
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
                    text: pageText,
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            IconedTextField(
              icon: Almaya.face,
              hintText: "שם משתמשת",
              controller: usernameController,
            ),
            IconedTextField(
              icon: Icons.lock,
              hintText: "סיסמה",
              obscureText: true,
              controller: passwordController,
            ),
            IconedTextField(
              icon: Almaya.asterisk,
              hintText: "אימות סיסמה",
              obscureText: true,
              controller: passwordCheckController,
            ),
            Button(
              text: "הירשמי",
              onPressed: () => Navigator.pushNamed(context, '/homePage'),
            ),
          ],
        ),
      );
    });
  }
}
