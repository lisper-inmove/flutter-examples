import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: FrostedDemo()));
}

class FrostedDemo extends StatelessWidget {

  const FrostedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: const FlutterLogo()
          ),
          Container(
            margin: EdgeInsets.only(top: 500, left: 80),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: 150.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5)
                  ),
                  child: Text(
                    'Frosted',
                    style: Theme.of(context).textTheme.bodyLarge
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
