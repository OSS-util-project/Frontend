class DeviceStatusData {
  final String type;
  final String timeStamp;
  final String ssid;
  final String brightness;
  final String signalPower;
  final String batteryPercent;
  final String batteryAmpere;
  final String logMessage;

  DeviceStatusData(
      {required this.type,
      required this.timeStamp,
      required this.ssid,
      required this.brightness,
      required this.signalPower,
      required this.batteryPercent,
      required this.batteryAmpere,
      required this.logMessage});
}
