import 'package:example/others/myinteractiveviewer.dart';
import 'package:example/components/mylongpressdraggable.dart';
import 'package:example/components/myscaffold.dart';
import 'package:example/layouts/myflex.dart';
import 'package:example/layouts/mylayout.dart';
import 'package:example/others/myreorderablelistview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp()
  );
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
      final Size size = MediaQuery.of(context).size;
      print("屏幕大小: $size");
      return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => MyScaffold(),
          'Layout': (context) => MyLayouts(),
          'FlexLayout': (context) => MyFlex(),
          'LongPressDraggable': (context) => MyLongPressDraggable2(),
          'InteractiveViewer': (context) => MyInteractiveViewer(),
          'ReorderableList': (context) => MyReorderableListView(),
        },
      );
    }
}
