import 'package:flutter/material.dart';

class MyLongPressDraggable {
  LongPressDraggable create(BuildContext context) {
    return LongPressDraggable(
      data: 'Hello',
      feedback: Container(
        width: 100,
        height: 100,
        color: Colors.green,
        child: const Center(child: Text('Dragging')),
      ),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: const Center(child: Text('Drag me')),
      ),
    );
  }
}

class MyLongPressDraggable2 extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _MyLongPressDraggable2State();

}

class _MyLongPressDraggable2State extends State<MyLongPressDraggable2> {
  
  Offset _offset = const Offset(200, 250);

  @override
    Widget build(BuildContext context) {
      return Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                  left: _offset.dx,
                  right: _offset.dy,
                  child: MyLongPressDraggable().create(context),
                  // child: LongPressDraggable(
                  //   feedback: Image.network(
                  //     "https://tinyurl.com/95ncjeuu",
                  //     height: 200,
                  //     color: Colors.orangeAccent,
                  //     colorBlendMode: BlendMode.colorBurn,
                  //   ),
                  //   child: Image.network(
                  //     "https://tinyurl.com/95ncjeuu",
                  //     height: 200,
                  //   ),
                  //   onDragEnd: (details) {
                  //     setState(() {
                  //       double adjustment = MediaQuery.of(context).size.height - constraints.maxHeight;
                  //       _offset = Offset(details.offset.dx, details.offset.dy - adjustment);
                  //     });
                  //   },
                  // ),
                ),
              ],
            );
          },
        ),
      );
    }

}
