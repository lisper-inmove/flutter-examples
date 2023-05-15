import 'package:flutter/material.dart';

class MyLayouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'FlexLayout');
          },
          child: const Text('Flex布局'),
        ),
      ],
    );
  }
}
