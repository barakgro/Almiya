import 'package:almiya/almaya_icons.dart';
import 'package:almiya/components/logo.dart';
import 'package:almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:almiya/components/main_card.dart';
import 'package:almiya/components/almiya_page.dart';
import 'package:almiya/components/menu_option.dart';

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

    var whatYouNeedOption = MenuOption(
        title: "קחו אותי למה שאני צריכה",
        icon: Almaya.search,
        size: optionSize,
        url: "/whatYouNeedPage",
      );
    var connectToPlacesOption = MenuOption(
        title: "חברו אותי לגופים שיכולים לעזור",
        icon: Almaya.connect,
        size: optionSize,
        url: "/connectToPlacesPage",
      );
    var writeAMessageOption = MenuOption(
        title: "הייתי רוצה לכתוב לכם משהו",
        icon: Almaya.message,
        size: optionSize,
        url: "/contactUsPage",
      );
    var informationOption = MenuOption(
        title: "יש לי שאלות, אני צריכה מידע",
        icon: Almaya.book,
        size: optionSize,
        url: "/informationPage",
      );

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
                        whatYouNeedOption,
                        VerticalDividerHomePage(),
                        connectToPlacesOption,
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
                      writeAMessageOption,
                      VerticalDividerHomePage(),
                      informationOption,
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
