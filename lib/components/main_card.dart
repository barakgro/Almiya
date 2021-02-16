import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardPainter extends CustomPainter {
  CardPainter({
    @required this.title,
  });

  final String title;
  final Color darkPurple = Color(0xff542d53);

  @override
  void paint(Canvas canvas, Size size) {
    TextPainter titlePainter = TextPainter(
      text: TextSpan(
        text: this.title,
        style: TextStyle(
          fontSize: 22,
          color: this.darkPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );

    titlePainter.layout();

    final paint = Paint()..color = Colors.white;
    final shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 15);

    final double titlePaddingHeight = 40;
    final double titlePaddingWidth = 60;

    Path whiteBoard = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0, (titlePainter.height + titlePaddingHeight) / 2, size.width, size.height), Radius.circular(40)));
    Path titleHole = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH((size.width / 2) - (titlePainter.width / 2) - (titlePaddingWidth / 2), 0,
              titlePainter.width + titlePaddingWidth, titlePainter.height + titlePaddingHeight),
          Radius.circular(35)))
      ..close();
    Path shadowTitleHole = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(10, 0, size.width - 20, titlePainter.height + titlePaddingHeight + 20),
          Radius.circular(35)))
      ..close();

    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        whiteBoard,
        shadowTitleHole,
      ),
      shadowPaint,
    );

    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        whiteBoard,
        titleHole,
      ),
      paint,
    );

    titlePainter.paint(
        canvas, Offset((size.width / 2) - (titlePainter.width / 2), (titlePaddingHeight*2 / 3)));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MainCard extends StatelessWidget {
  MainCard({
    this.title,
    this.child,
    this.height = 450,
    this.width = 310,
  });

  final String title;
  final Widget child;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: this.width,
        height: this.height,
        child: CustomPaint(
          size: Size.infinite,
          painter: CardPainter(title: this.title),
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 80, 10, 10),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
