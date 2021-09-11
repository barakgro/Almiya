import 'package:Almiya/pages/connect_to_places_page.dart';
import 'package:Almiya/pages/information_main_page.dart';
import 'package:Almiya/pages/messages_page.dart';
import 'package:Almiya/pages/sign_up_complition_page.dart';
import 'package:Almiya/pages/sign_up_page.dart';
import 'package:Almiya/pages/welcome_page.dart';
import 'package:Almiya/pages/login.dart';
import 'package:Almiya/pages/what_you_need_page.dart';
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
