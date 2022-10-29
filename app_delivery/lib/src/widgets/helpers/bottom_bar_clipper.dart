import 'package:flutter/material.dart';

class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, 0);
    path0.quadraticBezierTo(
        size.width * 0.7656250, 0, size.width * 0.6875000, 0);
    path0.cubicTo(
        size.width * 0.5820375,
        size.height * 0.0782000,
        size.width * 0.5648500,
        size.height * 0.5656500,
        size.width * 0.5000000,
        size.height * 0.6500000);
    path0.cubicTo(
        size.width * 0.4382875,
        size.height * 0.5625000,
        size.width * 0.4171875,
        size.height * 0.0813500,
        size.width * 0.3125000,
        0);
    path0.quadraticBezierTo(size.width * 0.2343750, 0, 0, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
