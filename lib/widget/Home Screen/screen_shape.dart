import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, size.height * 0.6338462);
    path0.cubicTo(
        size.width * 0.8712500,
        size.height * 0.7261538,
        size.width * 0.9812500,
        size.height * 0.6542308,
        size.width,
        size.height * 0.7615385);
    path0.quadraticBezierTo(size.width * 1.0006250, size.height * 0.8315385,
        size.width, size.height * 0.9984615);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(
        0, size.height * 0.8303846, 0, size.height * 0.7738462);
    path0.cubicTo(
        size.width * 0.0012500,
        size.height * 0.6553846,
        size.width * 0.1212500,
        size.height * 0.7169231,
        size.width * 0.5000000,
        size.height * 0.6338462);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
