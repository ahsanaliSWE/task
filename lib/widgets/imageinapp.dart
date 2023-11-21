import 'package:flutter/material.dart';

class ImageInApp extends StatelessWidget {
  const ImageInApp({super.key});

  @override
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
        ),
        body: Center(
          child:Image.network("https://images.unsplash.com/photo-1618336753974-aae8e04506aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80") ),
    );
  }
}
