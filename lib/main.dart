import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
      ),
      home: const FabExample(),
    );
  }
}

class FabExample extends StatelessWidget {

  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        shape: HeartShapeBorder(),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: const [
            IconButton(onPressed: null, icon: Icon(Icons.tv)),
            IconButton(onPressed: null, icon: Icon(Icons.tv)),
            IconButton(onPressed: null, icon: Icon(Icons.tv)),
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
    double width = rect.width;
    double height = rect.height - 5;
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
    return HeartShapeBorder();
  }
}
