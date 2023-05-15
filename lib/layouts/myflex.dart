import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_sharp),
          ),
        ),
        body: Center(
          child: Flex(
            direction: Axis.horizontal, // 设置主轴方向为水平
            children: [
              // 第一列，只有一个元素，占1/6
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text('第一列')),
                ),
              ),
              // 第二列，有两个元素，占3/6
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green,
                        child: const Center(child: Text('第二列第一个元素')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: const Center(child: Text('第二列第二个元素')),
                      ),
                    ),
                  ],
                ),
              ),
              // 第三列，只有一个元素，占2/6
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow,
                  child: const Center(child: Text('第三列')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
