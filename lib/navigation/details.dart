import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  final String data;
  const DetailsPage({key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detials Page"),
      ),
      body: Column(children: [
         Text("Welcome to Details Page $message"),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Click"))
      ]),
    );
  }
}
