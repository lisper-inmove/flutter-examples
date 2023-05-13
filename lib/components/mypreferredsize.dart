import 'package:flutter/material.dart';

class MyPreferredSize extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: Container(
        height: 80,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.redAccent,
              Colors.orangeAccent,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ListTile(
              title: const Text('Flutter Mapp'),
              trailing: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                color: Colors.white,
                onPressed: () {

                },
              ),
            ),
          ),
        ),
      ),
    );
  }

}
