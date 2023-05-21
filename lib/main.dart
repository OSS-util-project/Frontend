import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Material App",
      home: Scaffold(
          body: Container(
        alignment: Alignment.center,
        child: const Text("Hello world!"),
      )),
    );
  }
}
