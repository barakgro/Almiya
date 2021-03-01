import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  RadioButtons({Key key}) : super(key: key);

  @override
  RadioButtonsState createState() => RadioButtonsState();
}

class RadioButtonsState extends State<RadioButtons> {

  var textArray = ["כן", "נראה לי, אבל אני לא יודעת בדיוק לנסח אותה", "לא בדיוק"];
  var valuesArray = ["yes", "think_so", "not_exactly"];
  String selectedValue = "think_so";
  void setSelectedValue(String value) => setState(() => selectedValue = value);

  TextStyle textStyle = TextStyle(
      color: Color(0xff542d53),
      fontWeight: FontWeight.bold,
      fontSize: 18
  );

  Widget makeRadios() {
    List<Widget> radioList = new List();
    for(int i = 0; i < valuesArray.length; i++) {
      radioList.add(
        new RadioListTile(
          value: valuesArray[i],
          groupValue: selectedValue,
          onChanged: setSelectedValue,
          controlAffinity: ListTileControlAffinity.trailing,
          title: new Text(
            textArray[i],
            textDirection: TextDirection.rtl,
            style: textStyle),
        )
      );
      radioList.add(
        Divider(
          color: Color(0xff542d53),
          thickness: 2
      ));
    }
    Column col = new Column(children: radioList);
    return col;
  }

  Widget build(BuildContext context) {
    return makeRadios();
  }
}