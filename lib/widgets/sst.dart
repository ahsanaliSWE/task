import 'package:flutter/material.dart';


class Sst extends StatefulWidget {
  const Sst({super.key});

  @override
  State<Sst> createState() => _SstState();
}

class _SstState extends State<Sst> {
  double _currentSliderValue = 20;
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField, Slider and Switch"),
      ),
      body: Column(children: <Widget>[
        Row(
        children:[ 
                 Text("Rate the slider : "),
                   Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 10,
                      label: _currentSliderValue.round().toString(),
                       onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                            }
                          );
                        },
          ),
            ],
          ),
           
         Row(
         children: [
                const Text("Switch : "),
                Switch(
                     // This bool value toggles the switch.
                     value: light,
                     activeColor: Colors.red,
                     onChanged: (bool value) {
                     // This is called when the user toggles the switch.
                       setState(() {
                           light = value;
                        });
                      },
                 ),
            ],
       ),
       const Row(
        children: [
         
           SizedBox(
             width: 350,
             height: 200,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Text Field',
                hintText: 'User Name',
                ),
              ),
            ),
         
          ],),
      ],),
    );
  }
}
