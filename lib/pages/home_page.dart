import 'package:Almiya/almiya_icons.dart';
import 'package:Almiya/components/logo.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/menu_option.dart';

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
    var subtitle = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            "איך נוכל לעזור לך היום?",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ],
    );

    var menueOptions = {
      "whatYouNeed": MenuOption(
        "קחו אותי למה שאני צריכה",
        Almiya.search,
        optionSize,
        "/whatYouNeedPage",
      ),
      "connectToPlaces": MenuOption(
        "חברו אותי לגופים שיכולים לעזור",
        Almiya.connect,
        optionSize,
        "/connectToPlacesPage",
      ),
      "WrightAMessage": MenuOption(
        "הייתי רוצה לכתוב לכם משהו",
        Almiya.message,
        optionSize,
        "/contactUsPage",
      ),
      "Information": MenuOption(
        "יש לי שאלות, אני צריכה מידע",
        Almiya.book,
        optionSize,
        "/informationPage",
      ),
    };

    return AlmiyaPage(
      child: Column(
        children: [
          Row(
            children: [
              Logo(),
            ],
          ),
          MainCard(
            title: "שלום אורנית,",
            height: 480,
            child: Column(
              children: [
                subtitle,
                IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        menueOptions["whatYouNeed"],
                        VerticalDividerHomePage(),
                        menueOptions["connectToPlaces"],
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
                      menueOptions["WrightAMessage"],
                      VerticalDividerHomePage(),
                      menueOptions["Information"],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
