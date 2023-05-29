import 'package:flutter/material.dart';
import 'package:monitor_app/provider/device_status_data_provider.dart';
import 'package:provider/provider.dart';

class DeviceALogScreen extends StatefulWidget {
  const DeviceALogScreen({super.key});

  @override
  State<StatefulWidget> createState() => DeviceALogScreenState();
}

class DeviceALogScreenState extends State<DeviceALogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A 단말기 로그"),
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
        child: Consumer<DeviceStatusDataProvider>(
          builder: (context, appState, _) {
            return Text(appState.data.logMessage);
          },
        ),
      ),
    );
  }
}
