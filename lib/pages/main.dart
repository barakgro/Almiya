import 'package:Almiya/pages/welcome_page.dart';
import 'package:Almiya/pages/login.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'new_user_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => WelcomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => LoginPage(),
        '/homePage': (context) => HomePage(),
        '/newUserPage': (context) => NewUserPage(),
      },
    );
  }
}
