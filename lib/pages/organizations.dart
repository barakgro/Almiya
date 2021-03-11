import 'dart:ui';

import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/components/menu_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Organizations extends StatefulWidget {
  Organizations({Key key}) : super(key: key);

  @override
  OrganizationsState createState() => OrganizationsState();
}

class OrganizationsState extends State<Organizations> {

  final double optionSize = 100;

  TextStyle textStyle = TextStyle(
      color: Color(0xff542d53),
      fontSize: 18
  );

  Widget build(BuildContext context) {

    return new AlmiyaPage(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("גופים שונים עוזרים בנושאים שונים, תגללי ותראי מה מתאים לך.", style: textStyle, textDirection: TextDirection.rtl),
            new Text("נוכל לחבר בינך לבין כל גוף שתבחרי מהרשימה, כולם עובדים איתנו ומאפשרים לנו חיבור VIP בשבילך", style: textStyle, textDirection: TextDirection.rtl),
            Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(16.0),
                  children: <Widget>[
                    new MainCard(
                      title: "רפואה",
                      child: Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              MenuOption(
                                "ארגון א'",
                                Icons.apartment,
                                optionSize,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MenuOption(
                                "ארגון ב'",
                                Icons.apartment,
                                optionSize,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Divider(
                      thickness: 100,
                      height: 10,
                    ),
                    new MainCard(
                      title: "משפטים",
                      child: Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              MenuOption(
                                "ארגון א'",
                                Icons.apartment,
                                optionSize,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MenuOption(
                                "ארגון ב'",
                                Icons.apartment,
                                optionSize,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                )
            )

          ],
        ),
      ),
    );
  }
}