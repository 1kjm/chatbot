import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomBorder extends BorderDirectional {
  @override
  Path getOuterPath(ui.Rect rect, {ui.TextDirection? textDirection}) {
    Size size = rect.size;
    final path = Path();

    path
      ..moveTo(0, size.height * 0.66)
      ..quadraticBezierTo(
          size.width / 2, size.height / 1.3, size.width, size.height * 0.66)
      ..quadraticBezierTo(
          size.width * 1.05, size.height / 2, size.width, size.height * 0.33)
      ..quadraticBezierTo(size.width / 2, size.height / 0.8 - size.height, 0,
          size.height * 0.33)
      ..quadraticBezierTo(
          0 - size.width * 0.05, size.height / 2, 0, size.height * 0.66);
    return path;
  }
}
