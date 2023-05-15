import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        radius: 80,
        backgroundImage: const AssetImage("einstein.png"),

        child: ElevatedButton(
          onPressed: () {
            print("Pressed");
          },
          child: Text(''),
          style: ElevatedButton.styleFrom(
            // 按钮背景色
            backgroundColor: Colors.transparent,
            // Text字段的颜色
            foregroundColor: Colors.transparent,
            // 按钮阴隐颜色
            shadowColor: Colors.transparent,
          ),
        ),

      ),
    );
  }
}
