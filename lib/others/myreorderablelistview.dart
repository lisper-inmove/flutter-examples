import 'package:flutter/material.dart';

class MyReorderableListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyReorderableListViewState();
}

class _MyReorderableListViewState extends State<MyReorderableListView> {

  final List<int> items = List<int>.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reorderable List Example"),
      ),
      body: ReorderableListView(
        children: List.generate(
          items.length,
          (index) => ListTile(
            key: Key('$index'),
            tileColor: index.isOdd ? Colors.white12 : Colors.grey,
            title: Text('Item ${items[index]}'),
            trailing: const Icon(Icons.drag_handle_sharp,),
          ),
        ),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
