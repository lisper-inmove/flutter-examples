import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {

  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      onPressed: () { print(123); },
      shape: const HeartShapeBorder(),
      child: Container(
        padding: const EdgeInsets.only(top: 15),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class HeartShapeBorder extends ShapeBorder {
  const HeartShapeBorder();

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    double width = rect.width;
    double height = rect.height;
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.2 * width, height * 0.1, -0.25 * width, height * 0.6, 0.5 * width, height);
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.8 * width, height * 0.1, 1.25 * width, height * 0.6, 0.5 * width, height);
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return const HeartShapeBorder();
  }
}
