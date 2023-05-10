import 'package:flutter/material.dart';

void main() => runApp(const MyHeartShape());

class MyHeartShape extends StatelessWidget {

  const MyHeartShape({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomPaint(
              // painter: Chevron(),
              foregroundPainter: Chevron(),
              child: Container(
                width: 100.0,
                height: 120.0,

                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      color: Colors.red,
                    ),
                  ]
                ),

                child: const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    // child: Text("1", style: TextStyle(fontSize: 24.0)),
                    child: TextButton(onPressed: null, child: Text('text')),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 100, height: 100,),

            CustomPaint(
              foregroundPainter: Chevron(),
              child: ClipRect(
                clipper: const ClipPad(
                  padding: EdgeInsets.only(left: 30, top: 30, right: 30),
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 20,
                        spreadRadius: 5
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Clips the given object by its size.
/// The clip area can optionally be enlarged by a given padding.
class ClipPad extends CustomClipper<Rect> {
  final EdgeInsets padding;
    
  const ClipPad({
    this.padding = EdgeInsets.zero
  });
  
  @override
  Rect getClip(Size size) => padding.inflateRect(Offset.zero & size);

  @override
  bool shouldReclip(ClipPad oldClipper) => oldClipper.padding != padding;
}

class Chevron extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.orangeAccent, Colors.yellow],
      tileMode: TileMode.clamp,
    );

    final Rect colorBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final Paint paint = Paint()
      ..shader = gradient.createShader(colorBounds);

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - size.height / 3);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

