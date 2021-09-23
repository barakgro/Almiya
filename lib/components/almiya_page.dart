import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../consts.dart';

class AlmiyaPage extends StatelessWidget {
  final Widget child;

  AlmiyaPage({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final LinearGradient appGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [lightPurple, lightBlue],
    );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
          gradient: appGradient,
        ),
        child: SingleChildScrollView(
          child: this.child,
        ),
      ),
    );
  }
}
