import 'package:Almiya/components/radio_buttons.dart';
import 'package:flutter/material.dart';

class TakeMeWhereINeed extends StatefulWidget {
  TakeMeWhereINeed({Key key}) : super(key: key);

  @override
  TakeMeWhereINeedState createState() => TakeMeWhereINeedState();
}

class TakeMeWhereINeedState extends State<TakeMeWhereINeed> {

  var textArray = ["כן", "נראה לי, אבל אני לא יודעת בדיוק לנסח אותה", "לא בדיוק"];
  var valuesArray = ["yes", "think_so", "not_exactly"];
  String selectedValue = "think_so";

  TextStyle textStyle = TextStyle(
      color: Color(0xff542d53),
      fontWeight: FontWeight.bold,
      fontSize: 18
  );

  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("בואי ננסה להבין ביחד מה יעזור לך היום"),
            new Divider(color: Color(0xff542d53), thickness: 2),
            new Text("כדי למצוא את הכיוון הנכון, נשאל אותך כמה שאלות"),
            new Text("יש לך שאלה ספציפית שהיית רוצה לשאול?"),
            new RadioButtons()
          ],
        ),
      ),
    );
  }
}