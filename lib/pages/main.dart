import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Almiya/components/main_card.dart';
import 'package:Almiya/components/almiya_page.dart';
import 'package:Almiya/components/menu_option.dart';
import 'package:Almiya/components/bottom_navigation_menu.dart';
import '../pages/organizations.dart';
import '../pages/contact_us.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  bool _initialized = false;
  bool _error = false;

  final double optionSize = 100;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch(e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    new Organizations(),
    new ContactUs(),

    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    if(_error) {
      return null;
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return null;
    }
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'מידע',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'כתבי לנו',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inclusive),
            label: 'ארגונים',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff542d53),
        onTap: _onItemTapped,
      )
    );
  }
}