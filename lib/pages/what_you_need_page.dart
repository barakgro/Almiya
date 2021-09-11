import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/components/almiya_page.dart';

class WhatYouNeedPage extends StatelessWidget {

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
                      "בואי ננסה להבין ביחד מה יעזור לך היום",
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
                ],
              )),
        ],
      ),
    );
  }
}
