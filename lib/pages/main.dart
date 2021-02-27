import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/menu_option.dart';
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
                height: 100,
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    "logo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
          MainCard(
            title: "שלום!",
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "איך נוכל לעזור לך היום?",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        MenuOption(
                          "קחו אותי למה שאני צריכה",
                          Icons.search,
                          optionSize,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MenuOption(
                          "חברו אותי לגופים שיכולים לעזור",
                          Icons.link,
                          optionSize,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        MenuOption(
                          "הייתי רוצה לכתוב לכם משהו",
                          Icons.chat,
                          optionSize,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        MenuOption(
                          "יש לי שאלות, אני צריכה מידע",
                          Icons.menu_book_sharp,
                          optionSize,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
