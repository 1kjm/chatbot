import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final leftLinePoint1 = Offset(size.width * 0.3, 5);
    final leftLinePoint2 = Offset(size.width * 0.1, size.height - 5);
    final leftLinepaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2;

    final rightLinePoint1 = Offset(size.width - size.width * 0.1, 5);
    final rightLinePoint2 =
        Offset(size.width - size.width * 0.3, size.height - 5);
    final rightLinepaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2;

    var bodyPainter = Paint()
      ..color = Color.fromRGBO(255, 39, 168, 1.0)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12
      ..style = PaintingStyle.fill;

    Path rectangle = Path()
      ..addRRect(RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height), Radius.circular(15)));

    canvas.drawPath(rectangle, bodyPainter);
    canvas.drawLine(leftLinePoint1, leftLinePoint2, leftLinepaint);
    canvas.drawLine(rightLinePoint1, rightLinePoint2, rightLinepaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
