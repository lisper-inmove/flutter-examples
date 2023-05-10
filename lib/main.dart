import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FabExample(),
    );
  }
}

class FabExample extends StatelessWidget {

  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        shape: HeartShapeBorder(),
        // child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
              onPressed: null, 
              tooltip: 'Menu',
              icon: Icon(Icons.menu),
            ),
            IconButton(
              onPressed: null, 
              tooltip: 'pix',
              icon: Icon(Icons.pix),
            ),
            IconButton(
              onPressed: null, 
              tooltip: 'Home',
              icon: Icon(Icons.home),
            ),
          ],
        ),
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

    // heart的形状
    final height = rect.width;
    final width = rect.height;
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.2 * width, height * 0.1, -0.25 * width, height * 0.6, 0.5 * width, height);
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.8 * width, height * 0.1, 1.25 * width, height * 0.6, 0.5 * width, height);

    // 星星的形状
    // final height = rect.width / 2;
    // final width = rect.height / 2;
    // final radius = width;
    // path.moveTo(height, width + radius);
    // path.arcToPoint(Offset(height - radius, width), radius: Radius.circular(radius), clockwise: false);
    // path.arcToPoint(Offset(height, width - radius), radius: Radius.circular(radius), clockwise: false);
    // path.arcToPoint(Offset(height + radius, width), radius: Radius.circular(radius), clockwise: false);
    // path.arcToPoint(Offset(height, width + radius), radius: Radius.circular(radius), clockwise: false);

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return this;
  }
}
