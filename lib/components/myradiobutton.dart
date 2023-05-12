import 'package:flutter/material.dart';

enum Fruit { 
  apple,
  banana,
}

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});
  @override
  State<StatefulWidget> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {

  Fruit? _selectedValue = Fruit.apple;

  void _onSelect(Fruit? f) {
    setState(() {
      _selectedValue = f!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Apple"),
          leading: Radio<Fruit>(
            value: Fruit.apple,
            groupValue: _selectedValue,
            onChanged: _onSelect,
          ),
        ),
        ListTile(
          title: const Text("Banana"),
          leading: Radio<Fruit>(
            value: Fruit.banana,
            groupValue: _selectedValue,
            onChanged: _onSelect,
          ),
        ),
      ],
    );
  }
}

class MyRadioListTile extends StatefulWidget {

  MyRadioListTile({super.key});

  @override
  State<StatefulWidget> createState() => _MyRadioListTileState();
}

class _MyRadioListTileState extends State<MyRadioListTile> {

  Fruit? _selectedValue = Fruit.apple;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<Fruit>(
          title: const Text('Apple'),
          subtitle: const Text('Apple Subtitle'),
          value: Fruit.apple,
          groupValue: _selectedValue,
          onChanged: (Fruit? value) {
            setState(() {
              _selectedValue = value;
            });
          },
        ),
        RadioListTile<Fruit>(
          title: const Text('Banana'),
          subtitle: const Text('Banana Subtitle'),
          value: Fruit.banana,
          groupValue: _selectedValue,
          onChanged: (Fruit? value) {
            setState(() {
              _selectedValue = value;
            });
          },
        ),
      ],
    );
  }
}
