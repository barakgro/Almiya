import 'package:almiya/pages/connect_to_places_page.dart';
import 'package:almiya/pages/information_main_page.dart';
import 'package:almiya/pages/messages_page.dart';
import 'package:almiya/pages/sign_up_complition_page.dart';
import 'package:almiya/pages/sign_up_page.dart';
import 'package:almiya/pages/welcome_page.dart';
import 'package:almiya/pages/login.dart';
import 'package:almiya/pages/what_you_need_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'new_user_page.dart';
import '../consts.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: themeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            onPrimary: buttonTextColor,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/homePage': (context) => HomePage(),
        '/newUserPage': (context) => NewUserPage(),
        '/signUpPage': (context) => SignUpPage(),
        '/signUpComplitionPage': (contaxt) => SignUpComplitionPage(),
        '/informationPage': (context) => InformationPage(),
        '/whatYouNeedPage': (context) => WhatYouNeedPage(),
        '/contactUsPage': (context) => MessagesPage(),
        '/connectToPlacesPage': (context) => ConnectToPlacesPage(),
      },
    );
  }
}
