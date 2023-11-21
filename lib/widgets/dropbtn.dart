import 'package:flutter/material.dart';

class DropBtn extends StatefulWidget {
  const DropBtn({super.key});

  @override
  State<DropBtn> createState() => _DropBtnState();
}

class _DropBtnState extends State<DropBtn> {
  String? chosenvalue;
  final List itemlist = ["Android", "Ios"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop Down Button"),
      ),
      body: Center(
        child: DropdownButton(
          items: itemlist
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: (value) {
            setState(() {
              chosenvalue = value! as String;
            });
          },
          value: chosenvalue,
        ),
      ),
    );
  }
}
