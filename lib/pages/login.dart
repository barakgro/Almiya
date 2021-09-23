import 'package:almiya/components/almiya_page.dart';
import 'package:almiya/components/button.dart';
import 'package:almiya/components/logo.dart';
import 'package:almiya/components/text_input.dart';
import 'package:almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:almiya/almaya_icons.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var title = Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Material(
        type: MaterialType.transparency,
        child: Text(
          "שמחות שחזרת!",
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: themeColor,
              fontSize: titleSize,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Consumer<UsernameModel>(builder: (context, usernameModel, child) {
      void login() {
        usernameModel.setUsername(usernameController.text);
        Navigator.pushNamed(context, '/homePage');
      }

      return AlmiyaPage(
        child: Column(
          children: [
            Row(
              children: [
                Logo(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image(
                    image: AssetImage("assets/images/login.png"),
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
            title,
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
            Button(
              text: "הכנסי",
              onPressed: login,
            ),
          ],
        ),
      );
    });
  }
}
