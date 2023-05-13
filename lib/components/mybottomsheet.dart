import 'package:flutter/material.dart';

class MyBottomSheet {
  void create(BuildContext context) {
    showModalBottomSheet(
      elevation: 10,
      backgroundColor: Colors.blue,
      context: context,
      builder: (context) => Container(
        width: 300,
        height: 250,
        color: Colors.white54,
        alignment: Alignment.center,
        child: const Text('Breath in... breath out'),
      ),
    );
  } 
}
