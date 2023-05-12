import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {

  const MyCheckbox({super.key});

  @override
  State<StatefulWidget> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {

  bool checked = false;

  void onChanged(bool? value) {
    setState(() {
      checked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Check(Checkbox)'),
        Checkbox(
          value: checked,
          onChanged: onChanged,
        ),
      ],
    );
  }  
}

class MyCheckboxListTile extends StatefulWidget {
  const MyCheckboxListTile({super.key});

  @override
  State<StatefulWidget> createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  bool isChecked = false;

  void onChanged(bool? value) {
    setState(() {
      isChecked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Check me!(CheckboxListTile Based on Checkbox)'),
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
