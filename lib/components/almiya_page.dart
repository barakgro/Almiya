import 'package:flutter/widgets.dart';

class AlmiyaPage extends StatelessWidget {

  AlmiyaPage({
    this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff0afdc), Color(0xffc8e3e4)])),
      child: this.child,
    );
  }
}