import 'package:example/others/myreorderablelistview.dart';
import 'package:flutter/material.dart';

class Misc extends StatelessWidget {

  const Misc({super.key});

  @override
    Widget build(BuildContext context) {
      return Column(
        children: [

          const SizedBox(height: 1,),
          PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'InteractiveViewer');
              },
              child: const Text("Interactive View"),
            ),
          ),

          const SizedBox(height: 1,),
          PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'ReorderableList');
              },
              child: const Text("Reorderable List Example"),
            ),
          ),

        ],
      );
    }
}
