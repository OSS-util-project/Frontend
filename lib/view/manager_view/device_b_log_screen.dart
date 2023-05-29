import 'package:flutter/material.dart';

class DeviceBLogScreen extends StatefulWidget {
  const DeviceBLogScreen({super.key});

  @override
  State<StatefulWidget> createState() => DeviceBLogScreenState();
}

class DeviceBLogScreenState extends State<DeviceBLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("B 단말기 로그"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(width: 1)),
        padding: const EdgeInsets.all(4),
        child: const Text("Logdata"),
      ),
    );
  }
}
