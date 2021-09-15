import 'package:flutter/material.dart';

class BottomNavigationMenu extends StatefulWidget {
  BottomNavigationMenu({required Key key}) : super(key: key);

  @override
  BottomNavigationMenuState createState() => BottomNavigationMenuState();
}

class BottomNavigationMenuState extends State<BottomNavigationMenu> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      );
  }
}