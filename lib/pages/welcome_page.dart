import 'package:almiya/components/button.dart';
import 'package:flutter/material.dart';
import 'package:almiya/components/almiya_page.dart';

class WelcomePage extends StatelessWidget {

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
                height: MediaQuery.of(context).size.height * 0.8,
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
              Button(
                width: MediaQuery.of(context).size.width * 0.45,
                text: "חזרתי",
                onPressed: () => Navigator.pushNamed(context, '/login'),
              ),
              Button(
                  width: MediaQuery.of(context).size.width * 0.45,
                  text: "אני חדשה פה",
                  onPressed: () =>
                      Navigator.pushNamed(context, '/newUserPage')),
            ],
          ),
        ],
      ),
    );
  }
}
