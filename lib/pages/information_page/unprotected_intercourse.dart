import 'package:almiya/components/information_option_data.dart';
import 'package:almiya/components/menu_option.dart';
import 'package:almiya/consts.dart';
import 'package:flutter/material.dart';
import 'package:almiya/components/almiya_page.dart';

import '../home_page.dart';

class UnprotectedIntercourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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
            child: InformationOptionData(
                  title:  "יחסים לא מוגנים",
            )
          ),
        ],
      ),
    );
  }
}
