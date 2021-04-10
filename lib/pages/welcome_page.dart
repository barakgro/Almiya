import 'package:Almiya/components/button.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/components/almiya_page.dart';


class WelcomePage extends StatelessWidget {
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
                padding: EdgeInsets.fromLTRB(0, 80, 0, 50),
                height: 540,
                child: Image(
                  image: AssetImage("assets/images/entrance.png"),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: [
              Column(
                children: [
                  Container(
                    width: 170,
                    child: Material(
                        type: MaterialType.transparency,
                        child: Button(
                          text: "חזרתי",
                          onPressed: () => Navigator.pushNamed(context, '/login'),
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 170,
                    child: Material(
                        type: MaterialType.transparency,
                        child: Button(
                          text: "אני חדשה פה",
                          onPressed: () => Navigator.pushNamed(context, '/newUserPage')
                        )),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
