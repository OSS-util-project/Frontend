import 'package:flutter/material.dart';
import 'package:monitor_app/my_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Material App",
      home: MyStateWidget(),
    );
  }
}
