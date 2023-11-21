import 'package:flutter/material.dart';

class RadioBtn extends StatefulWidget {
  const RadioBtn({super.key});

 @override
  State<RadioBtn> createState() => _RadioBtnState();
}
enum Skill { java, kotlin }

class _RadioBtnState extends State<RadioBtn> {
  bool java = false;
  bool kotlin = false;
  Skill? _skill = Skill.java;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: Column(
        children: <Widget>[
         const Text("Chose Skill"),
          RadioListTile<Skill>(
            title: const Text('Java'),
            value: Skill.java,
            groupValue: _skill,
            onChanged: (Skill? value) {
              setState(() {
                _skill = value;
              });
            },
          ),
          RadioListTile<Skill>(
            title: const Text('kotlin'),
            value: Skill.kotlin,
            groupValue: _skill,
            onChanged: (Skill? value) {
              setState(() {
                _skill = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

