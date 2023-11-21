import 'package:flutter/material.dart';
import 'package:task/navigation/details.dart';
import 'package:task/navigation/homepage.dart';

class Navigate extends StatelessWidget {
  const Navigate({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context) => const MyHomePage(),
        "/details": (context) => const DetailsPage(data: '',),
      },
      home: const MyHomePage(),
    );
  }
}
