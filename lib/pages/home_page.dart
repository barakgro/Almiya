import 'package:Almiya/almiya_icons.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/menu_option.dart';
import 'package:Almiya/components/bottom_navigation_menu.dart';

class VerticalDividerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: Colors.black,
      indent: 20,
      endIndent: 5,
    );
  }
}

class HomePage extends StatelessWidget {
  final double optionSize = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlmiyaPage(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Container(
              child: Material(
                type: MaterialType.transparency,
                child: MainCard(
                  title: "שלום אורנית,",
                  height: 480,
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
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      IntrinsicHeight(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MenuOption(
                                "קחו אותי למה שאני צריכה",
                                Almiya.search,
                                optionSize,
                                "/whatYouNeedPage",
                              ),
                              VerticalDividerHomePage(),
                              MenuOption(
                                "חברו אותי לגופים שיכולים לעזור",
                                Almiya.connect,
                                optionSize,
                                "/connectToPlacesPage",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 20,
                        endIndent: 20,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MenuOption(
                              "הייתי רוצה לכתוב לכם משהו",
                              Almiya.message,
                              optionSize,
                              "/contactUsPage",
                            ),
                            VerticalDividerHomePage(),
                            MenuOption(
                              "יש לי שאלות, אני צריכה מידע",
                              Almiya.book,
                              optionSize,
                              "/informationPage",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
