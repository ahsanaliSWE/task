import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int i) {
        return ListTile(
          contentPadding: const EdgeInsets.all(7.0),
          leading: CircleAvatar(
            child: Image.network('https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            backgroundColor: const Color.fromRGBO(255, 255, 255, 0.996),
          ),
          title:
              const Text("Sample", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Yesterday, ${DateTime.now().hour}" +
              ":" +
              "${DateTime.now().minute}" +
              "pm"),
          trailing: const Icon(
            Icons.call,
            color: Color.fromRGBO(7, 94, 84, 2),
          ),
        );
      },
    );
  }
}
