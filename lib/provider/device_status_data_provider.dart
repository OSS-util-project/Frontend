import 'package:flutter/material.dart';
import 'package:monitor_app/model/device_status_data.dart';

class DeviceStatusDataProvider extends ChangeNotifier {
  DeviceStatusData _data = DeviceStatusData(
      type: "",
      timeStamp: "",
      ssid: "",
      brightness: "",
      signalPower: "",
      batteryPercent: "",
      batteryAmpere: "",
      logMessage: "");

  DeviceStatusData get data => _data;

  void updateData(DeviceStatusData data) {
    _data = data;
  }
}
