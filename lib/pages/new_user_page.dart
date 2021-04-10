import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/components/almiya_page.dart';

class NewUserPage extends StatelessWidget {
  final String firstParagragh =
      "ברוכה הבאה לעלמיא -\nמרחב בטוח ופרטי לנערות.\nעלמיא תנסה לעזור לך אם את מתמודדת עם הריון, או חושבת שאולי את בהריון.";
  final TextSpan secondParagragh = new TextSpan(
    style: new TextStyle(
      fontSize: 14.0,
      color: Colors.black,
    ),
    children: <TextSpan>[
      new TextSpan(text: 'עלמיא'),
      new TextSpan(
          text: ' לא ',
          style: new TextStyle(fontWeight: FontWeight.bold, color: darkPurple)),
      new TextSpan(
          text:
              'תגיד לך מה להחליט, או תחליט בשבילך. עלמיא לא תיצור קשר עם אנשים שלא תרצי')
    ],
  );
  final TextSpan thirdParagragh = new TextSpan(
    style: new TextStyle(
      fontSize: 14.0,
      color: Colors.black,
    ),
    children: <TextSpan>[
      new TextSpan(
        text: 'זה הגוף שלך וההחלטה שלך. ',
        style: new TextStyle(fontWeight: FontWeight.bold, color: darkPurple),
      ),
      new TextSpan(text: 'אנחנו רק פה לעזור וללוות בזמן המבלבל הזה'),
    ],
  );

  final double textScale = 1.4;

  @override
  Widget build(BuildContext context) {
    return AlmiyaPage(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 120,
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: MainCard(
                  width: 320,
                  height: 460,
                  title: "שלום לך!",
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(32, 5, 32, 0),
                    child: Column(
                      children: [
                        Text(
                          this.firstParagragh,
                          maxLines: 6,
                          textDirection: TextDirection.rtl,
                          textScaleFactor: this.textScale,
                        ),
                        Divider(
                          color: Colors.black,
                          height: 25,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                        RichText(
                          text: this.secondParagragh,
                          textDirection: TextDirection.rtl,
                          textScaleFactor: this.textScale,
                        ),
                        Divider(
                          color: Colors.black,
                          height: 25,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                        RichText(
                          text: this.thirdParagragh,
                          textDirection: TextDirection.rtl,
                          textScaleFactor: this.textScale,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
