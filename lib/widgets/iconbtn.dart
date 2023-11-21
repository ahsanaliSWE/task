import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({super.key});

  @override
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Icon Button"),
        ),
        body: Center(
          child:IconButton(
                icon: const Icon(
                  Icons.account_box_rounded,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 40, // Changing Drawer Icon Size
                ),
                onPressed: () {
                },
              ),
        ));
  }
}
