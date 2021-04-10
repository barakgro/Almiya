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
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [lightPurple, lightBlue])),
      child: this.child,
    );
  }
}