import 'package:flutter/material.dart';

enum Option {yes, think_so, not_exactly}


class RadioButtons extends StatefulWidget {
  RadioButtons({Key key}) : super(key: key);

  @override
  RadioButtonsState createState() => RadioButtonsState();
}

class RadioButtonsState extends State<RadioButtons> {

  Option option = Option.think_so;

  Widget build(BuildContext context) {

    const TextStyle textStyle = TextStyle(
      color: Color(0xff542d53),
      fontWeight: FontWeight.bold,
      fontSize: 18
    );

    return Column(
      children: <Widget>[
        RadioListTile(
          title: const Text(
            "כן",
            textDirection: TextDirection.rtl,
            style: textStyle,
          ),
          value: Option.yes,
          groupValue: option,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (Option value) {
            setState(() {
              option = value;
            });
          },
        ),
        Divider(
          color: Color(0xff542d53),
          thickness: 2
        ),
        RadioListTile(
          title: const Text(
            "נראה לי, אבל אני לא יודעת בדיוק לנסח אותה",
            textDirection: TextDirection.rtl,
            style: textStyle,
          ),
          value: Option.think_so,
          groupValue: option,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (Option value) {
            setState(() {
              option = value;
            });
          },
        ),
        Divider(
            color: Color(0xff542d53),
            thickness: 2
        ),
        RadioListTile(
          title: const Text(
            "לא בדיוק",
            textDirection: TextDirection.rtl,
            style: textStyle,
          ),
          value: Option.not_exactly,
          groupValue: option,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (Option value) {
            setState(() {
              option = value;
            });
          },
        ),
      ],
    );
  }
}