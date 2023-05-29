import 'package:flutter/material.dart';
import 'package:monitor_app/model/bus_data.dart';

class BusDataProvider extends ChangeNotifier {
  BusData _data = BusData(
      firstTime: "",
      lastTime: "",
      predictTime1: "",
      stationNm1: "",
      predictTime2: "",
      stationNm2: "",
      isRunning: false,
      arrivalSoon: false);

  BusData get data => _data;

  void updateData(BusData data) {
    _data = data;
  }
}
