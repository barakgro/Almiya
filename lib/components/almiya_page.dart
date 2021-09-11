import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlmiyaPage extends StatelessWidget {
  AlmiyaPage({
    this.child,
  });

  final Widget child;
  final Color lightBlue = Color(0xffc8e3e4);
  final Color lightPurple = Color(0xfff0afdc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [lightPurple, lightBlue]),
        ),
        child: SingleChildScrollView(
          child: this.child,
        ),
      ),
    );
  }
}
