import 'package:Almiya/components/button.dart';
import 'package:Almiya/components/logo.dart';
import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:Almiya/components/almiya_page.dart';

class NewUserPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var continueButton = Padding(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Button(
        text: "המשיכי",
        onPressed: () => Navigator.pushNamed(context, '/signUpPage'),
      ),
    );

    final TextSpan firstParagraph = new TextSpan(
      style: baseStyle,
      text:
          "ברוכה הבאה לעלמיא - \nמרחב בטוח ופרטי לנערות. עלמיא תנסה לעזור לך אם את מתמודדת עם הריון, או חושבת שאולי את בהריון.",
    );
    final TextSpan secondParagraph = new TextSpan(
      style: baseStyle,
      children: <TextSpan>[
        new TextSpan(text: 'עלמיא'),
        new TextSpan(
          text: ' לא ',
          style: boldStyle,
        ),
        new TextSpan(
            text:
                'תגיד לך מה להחליט, או תחליט בשבילך. עלמיא לא תיצור קשר עם אנשים שלא תרצי')
      ],
    );
    final TextSpan thirdParagraph = new TextSpan(
      style: baseStyle,
      children: <TextSpan>[
        new TextSpan(
          text: 'זה הגוף שלך וההחלטה שלך. ',
          style: boldStyle,
        ),
        new TextSpan(text: 'אנחנו רק פה לעזור וללוות בזמן המבלבל הזה'),
      ],
    );

    var paragraphs = [firstParagraph, secondParagraph, thirdParagraph];

    var mainCardContent = ListView.separated(
      padding: EdgeInsets.only(top: 10),
      itemCount: paragraphs.length,
      separatorBuilder: (BuildContext context, int index) => line,
      itemBuilder: (BuildContext context, int index) {
        return RichText(
          text: paragraphs[index],
          textDirection: TextDirection.rtl,
        );
      },
    );

    return AlmiyaPage(
      child: Column(
        children: [
          Row(
            children: [
              Logo(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainCard(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 450,
                    title: "שלום לך!",
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: mainCardContent,
                    ),
                  ),
                  continueButton,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
