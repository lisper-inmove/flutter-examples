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
