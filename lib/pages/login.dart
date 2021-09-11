import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/button.dart';
import 'package:Almiya/components/logo.dart';
import 'package:Almiya/components/text_input.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/almiya_icons.dart';

class LoginPage extends StatelessWidget {
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
            icon: Almiya.face,
            hintText: "שם משתמשת",
          ),
          IconedTextField(
            icon: Icons.lock,
            hintText: "סיסמה",
            obscureText: true,
          ),
          Button(
            text: "הכנסי",
            onPressed: () => Navigator.pushNamed(context, '/homePage'),
          ),
        ],
      ),
    );
  }
}
