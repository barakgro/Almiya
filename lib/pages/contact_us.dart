import 'dart:ui';

import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/components/menu_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  ContactUs({Key key}) : super(key: key);

  @override
  ContactUsState createState() => ContactUsState();
}

class ContactUsState extends State<ContactUs> {

  final double optionSize = 100;

  TextStyle textStyle = TextStyle(
      color: Color(0xff542d53),
      fontSize: 18
  );

  Widget build(BuildContext context) {
    String userMessage = '';
    return AlmiyaPage(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("היי,", style: textStyle, textDirection: TextDirection.rtl),
            Text("רוצה לכתוב לנו משהו?", style: textStyle, textDirection: TextDirection.rtl),
            Text("יש משהו נוסף שאת צריכה ולא מצאת לו מענה?", style: textStyle, textDirection: TextDirection.rtl),
            Card(
                child: Column(
                    children: <Widget>[
                      Text("נשמח לשמוע ממך!", style: textStyle, textDirection: TextDirection.rtl),
                      Text("קודם חשוב לנו שתדעי שני דברים:", style: textStyle, textDirection: TextDirection.rtl),
                      Text("יש משהו נוסף שאת צריכה ולא מצאת לו מענה?", style: textStyle, textDirection: TextDirection.rtl),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TextField(
                            onChanged: (text) {
                              userMessage = text;
                            },
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            minLines: 5,
                            maxLines: 15,
                            decoration: InputDecoration(

                                border: InputBorder.none,
                                hintText: 'מה רצית להגיד?',
                                filled: true,
                                fillColor: Color(0xFFDBEDFF),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.grey),
                                )
                            )
                        ),
                      )
                    ]
                )
            ),
            new RaisedButton(
              onPressed: null,
              child: Text('שליחה'),
            )
          ],
        ),
      ),
    );
  }
}