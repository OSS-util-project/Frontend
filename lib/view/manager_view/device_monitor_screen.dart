import 'package:flutter/material.dart';
import 'package:monitor_app/view/login_screen.dart';
import 'package:monitor_app/view/manager_view/container/device_control_container.dart';

import 'container/device_status_container.dart';

class DeviceMonitorScreen extends StatefulWidget {
  const DeviceMonitorScreen({super.key});

  @override
  State<StatefulWidget> createState() => DeviceMonitorScreenState();
}

class DeviceMonitorScreenState extends State<DeviceMonitorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("버스 단말기 모니터링"),
          actions: [
            IconButton(
                onPressed: () => {
                      // TO DO: 로그아웃 기능 구현
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                          (route) => false)
                    },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            alignment: Alignment.center,
            child: Column(
              children: const [
                DeviceStatusContainer(
                  deviceType: "A",
                ),
                Padding(padding: EdgeInsets.all(16)),
                DeviceStatusContainer(
                  deviceType: "B",
                ),
                Padding(padding: EdgeInsets.all(16)),
                DeviceControlContainer()
              ],
            ),
          ),
        ));
  }
}
