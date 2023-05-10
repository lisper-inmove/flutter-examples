import 'package:flutter/material.dart';

void main() => runApp(const MyHeartShape());

class MyHeartShape extends StatelessWidget {

  const MyHeartShape({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: CustomPaint(
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(size.width * 0.5, size.height * 0.2)
      ..cubicTo(size.width * 0.8, 0, size.width, size.height * 0.3, size.width, size.height * 0.6)
      ..cubicTo(size.width, size.height * 0.9, size.width * 0.5, size.height, size.width * 0.5, size.height)
      ..cubicTo(size.width * 0.5, size.height, 0, size.height * 0.9, 0, size.height * 0.6)
      ..cubicTo(0, size.height * 0.3, size.width * 0.2, 0, size.width * 0.5, size.height * 0.2)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

