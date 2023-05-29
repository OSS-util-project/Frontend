import 'package:flutter/material.dart';
import 'package:monitor_app/view/manager_view/device_a_log_screen.dart';

import '../device_b_log_screen.dart';

class DeviceStatusContainer extends StatefulWidget {
  // A, B
  final String deviceType;

  const DeviceStatusContainer({super.key, required this.deviceType});

  @override
  State<StatefulWidget> createState() =>
      DeviceStatusContainerState(deviceType: deviceType);
}

class DeviceStatusContainerState extends State<DeviceStatusContainer> {
  final String deviceType;

  DeviceStatusContainerState({required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "버스 단말기 상태 ($deviceType)",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () => {
              if (deviceType == "A")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeviceALogScreen()))
                },
              if (deviceType == "B")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeviceBLogScreen()))
                }
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(249, 157, 28, 50))),
            child: const Text("로그 조회하기"),
          )
        ],
      ),
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "배터리 수준: 80%",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              "배터리 상태: 방전 중 (전압 4.141V, 온도 27.0°C)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              "연결된 네트워크: DKU_WIFI",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              "신호 세기: -45dBm",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          ],
        ),
      )
    ]);
  }
}
