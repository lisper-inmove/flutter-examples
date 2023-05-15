import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyInteractiveViewerState();
}

class _MyInteractiveViewerState extends State<MyInteractiveViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(title: Text('Fluter Mapp')),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height - 500,
          width: MediaQuery.of(context).size.width - 100,
          color: Colors.lime,
          child: InteractiveViewer(
            // boundaryMargin: const EdgeInsets.all(100),
            // 指定往哪个方向可以拖动.left表示可以向右动
            boundaryMargin: const EdgeInsets.only(left: 100, top: 100),
            child: Center(
              child: Container(
                height: 80,
                width: 80,
                color: Colors.orangeAccent,
                child: Text("Drap Me"),
              ),
            ),
          ),
        ),
      ),
      // body: InteractiveViewer(
      //   boundaryMargin: const EdgeInsets.all(double.infinity),
      //   child: Container(
      //     height: MediaQuery.of(context).size.height,
      //     width: MediaQuery.of(context).size.width,
      //     color: Colors.lime,
      //     child: Center(
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //         child: Text("Drag Me"),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
