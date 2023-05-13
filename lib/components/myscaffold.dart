import 'package:example/components/myfloatingactionbutton.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/home.dart';

typedef BottomItemOnTap = void Function(int index);

class MyScaffold extends StatefulWidget {

  const MyScaffold({super.key});

  @override
  State<StatefulWidget> createState() => _MyScaffoldState();

}

class _MyScaffoldState extends State<MyScaffold> {

  int _index = 0;

  List<Widget> pages = [
    HomePage(),
    Center(child: Text('Share')),
    Center(child: Text('Mine')),
  ];

  void ontap(int index) {
    setState(() {
      _index = index;
    });
  }

  PreferredSize _createPreferredSize(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: Container(
        height: 120,
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

  final bool _showBottomsheet = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 顶部的AppBar
      // appBar: AppBar(
      //   title: const Text("Flutter Example"),
      // ),
      // appBar: _createPreferredSize(context),

      // 底部一直存在的sheet
      // bottomSheet: _showBottomsheet ? Container(
      //     height: 80,
      //     color: Colors.amber,
      //     child: const Center(
      //       child: Text('This is a persistent bottom sheet'),
      //     ),
      //   ) : null,

      // 主体内容
      body: pages[_index],

      // 底部的AppBar
      bottomNavigationBar: MyBottomAppBar(fn: ontap),

      // FloatingActionButton
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: MyFloatingActionButton(),
    );
  }

}


class MyBottomAppBar extends StatelessWidget {

  const MyBottomAppBar({
    required this.fn,
    super.key
  });

  final BottomItemOnTap fn;

  Expanded _createExpandedIconButton(index, icon, tooltip) {
    return Expanded(
      child: IconButton(
        onPressed: () { fn(index); }, 
        icon: Icon(icon),
        tooltip: tooltip,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        children: [
          _createExpandedIconButton(0, Icons.home, 'home'),
          _createExpandedIconButton(1, Icons.share, 'share'),
          _createExpandedIconButton(2, Icons.person, 'profile'),
          const Expanded(child: Text('')),
        ],
      ),
    );
  }
}
