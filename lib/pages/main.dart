import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/components/almiya_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlmiyaPage(
      child: MainCard(
        title: "שלום לך!",
        child: Text("test test"),
      ),
    );
  }
}
