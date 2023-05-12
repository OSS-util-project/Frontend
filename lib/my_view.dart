import 'package:flutter/material.dart';

class MyStateWidget extends StatefulWidget {
  const MyStateWidget({super.key});

  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState<MyStateWidget> extends State {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("$i")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() => {i += 1}),
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
