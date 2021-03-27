import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/button.dart';
import 'package:Almiya/components/text_input.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final double optionSize = 100;

  @override
  Widget build(BuildContext context) {
    return AlmiyaPage(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300,
                child: Image(
                  image: AssetImage("lib/pictures/login-logo.jpeg"),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    "שמחים שחזרת!",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: darkPurple,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
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
                    icon: Icons.face,
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
                    child: Button(
                      text: "הכנסי",
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
