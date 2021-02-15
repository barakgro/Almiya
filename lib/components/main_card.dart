import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainCard extends StatelessWidget {
  MainCard({
    this.title,
    this.child,
  });

  final String title;
  final Widget child;
  final Color darkPurple = Color(0xff542d53);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      shadowColor: Colors.grey.withOpacity(0.5),
      elevation: 10,
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 30),
      child: Column(
        children: [
          Text(
            this.title,
            style: TextStyle(fontSize: 22, color: this.darkPurple),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: this.child,
          ),
        ],
      ),
    );
  }
}
