import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        
      ),
      body: Column(children: [
        const Text("Welcome to Home Page"),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/details",
              arguments: "Home Data");
            },
            child: const Text("Click"))
      ]),
    );
  }
}
