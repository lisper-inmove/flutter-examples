import 'package:flutter/material.dart';

void main() => runApp(const MyHeartShape());

class MyHeartShape extends StatelessWidget {

  const MyHeartShape({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(80),
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.green,

            // 单独设置上下左右
            // 不能与color,borderRadius,shape共用
            // border: Border(
            //   top: BorderSide(width: 1.0, color: Colors.lightBlue.shade50),
            //   right: BorderSide(width: 1.0, color: Colors.lightBlue.shade50),
            //   bottom: BorderSide(width: 1.0, color: Colors.lightBlue.shade900),
            //   left: BorderSide(width: 1.0, color: Colors.lightBlue.shade50),
            // ),

            // 一次设置4条边
            // color: const Color(0xaabbccff),
            // borderRadius: BorderRadius.all(
            //   Radius.circular(80),
            // ),

            boxShadow: [ // 数组索引大的会覆盖索引小的
              BoxShadow(
                color: Colors.red,
                // 往外扩散的半径
                spreadRadius: 3,
                // 虚化的半径
                blurRadius: 4,
                // 相对于(0,0)的偏移
                offset: Offset(0, 3),
              ),
              BoxShadow(
                color: Colors.blue,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],

            shape: BoxShape.circle,

          ),
        ),
      )
    );
  }
}
