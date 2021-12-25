import 'package:almiya/components/information_option_data.dart';
import 'package:almiya/components/menu_option.dart';
import 'package:almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:almiya/components/almiya_page.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';

class InformationPageModel extends ChangeNotifier {
  String _subpage = "";

  String get subPage => _subpage;

  void setSubPage(String subPage) {
    _subpage = subPage;
    notifyListeners();
  }

  void back() {
    _subpage = "";
    notifyListeners();
  }
}

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InformationPageModel(),
      child: new Information(),
    );
  }
}

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    createRow(firstOption, secondOption) {
      const double size = 90;

      return IntrinsicHeight(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuOption(
                  icon: firstOption["icon"],
                  title: firstOption["text"],
                  size: size,
                  url: "/information/" + firstOption["url"]),
              VerticalDividerHomePage(),
              MenuOption(
                  icon: secondOption["icon"],
                  title: secondOption["text"],
                  size: size,
                  url: "/information/" + secondOption["url"]),
            ],
          ),
        ),
      );
    }

    var subtitle = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            "על איזה נושא תרצי לקרוא?",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ],
    );

    var rawOptions = [
      {
        "icon": Icons.hourglass_empty,
        "text": "יחסים לא מוגנים בשעות האחרונות",
        "url": "unprotectedIntercourse"
      },
      {
        "icon": Icons.pregnant_woman,
        "text": "אני חושבת שאולי אני בהריון",
        "url": "maybePregnant"
      },
      {"icon": Icons.arrow_back_sharp, "text": "הפלה", "url": ""},
      {"icon": Icons.add_to_queue, "text": "מסירה לאימוץ", "url": "adoption"},
      {
        "icon": Icons.pregnant_woman_rounded,
        "text": "היריון",
        "url": "pregnancy"
      },
      {
        "icon": Icons.child_care,
        "text": "הכנה ללידה",
        "url": "childbirthPreparation"
      },
      {
        "icon": Icons.bedroom_parent_outlined,
        "text": "הורות",
        "url": "paranthood"
      },
      {
        "icon": Icons.security,
        "text": "איך מונעים היריון?",
        "url": "preventPregnancy"
      },
    ];

    var rows = List.generate(4,
        (index) => createRow(rawOptions[index * 2], rawOptions[index * 2 + 1]));

    var line = Divider(
      color: themeColor,
      height: 25,
      thickness: 1,
      indent: 0,
      endIndent: 0,
    );
    var options = ListView.separated(
      padding: EdgeInsets.only(top: 10),
      itemCount: rows.length,
      separatorBuilder: (BuildContext context, int index) => line,
      itemBuilder: (BuildContext context, int index) {
        return rows[index];
      },
    );

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
                    "מידע",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: themeColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                line,
                subtitle,
                // MaterialPageRoute(
                //     builder: (context) =>
                //         InformationOptionData(title: "title")),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: options,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
