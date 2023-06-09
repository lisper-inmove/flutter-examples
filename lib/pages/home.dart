import 'package:example/components/mybottomsheet.dart';
import 'package:example/components/mycheckbox.dart';
import 'package:example/components/mycircleavatar.dart';
import 'package:example/components/mylongpressdraggable.dart';
import 'package:example/components/mymaterialbanner.dart';
import 'package:example/components/mypreferredsize.dart';
import 'package:example/components/myradiobutton.dart';
import 'package:example/components/mytextfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(4),
      children: [
        const SizedBox(height: 100,),
        CommonChild(w: const MyCheckbox(), height: 50,),
        const SizedBox(height: 1,),
        CommonChild(w: const MyCheckboxListTile(), height: 50,),
        const SizedBox(height: 1,),
        CommonChild(w: const MyRadioButton(), height: 100,),
        const SizedBox(height: 1,),
        CommonChild(w: MyRadioListTile(), height: 150,),
        const SizedBox(height: 1),
        CommonChild(w: MyTextField(), height: 100),
        const SizedBox(height: 1),
        CommonChild(w: MyMaterialBanner(), height: 100),
        const SizedBox(height: 1),
        CommonChild(w: MyPreferredSize(), height: 100),
        const SizedBox(height: 1),
        CommonChild(w: Center(
          child: ElevatedButton(
            onPressed: () => MyBottomSheet().create(context), 
            child: const Text('Show the BottomSheet')),
        ), height: 100,),
        const SizedBox(height: 10),
        CommonChild(w: MyLongPressDraggable().create(context), height: 100),
        const SizedBox(height: 1),
        CommonChild(w: MyCircleAvatar(), height: 100,),
      ],
    );
  }
}

class CommonChild extends StatefulWidget {

  CommonChild({
    this.w,
    this.height,
    super.key,
  });

  Widget? w;
  double? height;

  @override
  State<StatefulWidget> createState() => _CommonChildState(w: w, height: height);
}

class _CommonChildState extends State<CommonChild> {

  _CommonChildState({
    this.w,
    this.height,
  });

  Widget? w;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      type: MaterialType.canvas,
      child: w,
    );
  }
}
