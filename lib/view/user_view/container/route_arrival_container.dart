import 'package:flutter/material.dart';
import 'package:monitor_app/utils/constants.dart';
import 'package:monitor_app/utils/datetime_handler.dart';
import 'package:monitor_app/view/user_view/row/route_arrival_row.dart';

import '../../../model/bus_data.dart';

class RouteArrivalContainer extends StatelessWidget {
  late final List<BusData?> busDataList;
  late List<Widget> busArrivalRowList;
  String timestamp = "";

  RouteArrivalContainer({
    super.key,
    required List<BusData?> busDataList,
  }) {
    timestamp = getNowTimeStamp();
    busArrivalRowList = [
      const Text(
        "버스별 도착 정보",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Text(
        "최근 새로고침: $timestamp",
        style: const TextStyle(color: Colors.grey, fontSize: 10),
      ),
      const Padding(padding: EdgeInsets.all(14)),
    ];

    Map<String, BusData?> arrivalBusList = {
      "24": busDataList[0],
      "720-3": busDataList[1],
      "shuttle": busDataList[2]
    };

    for (var k in arrivalBusList.keys) {
      switch (k) {
        case "24":
          busArrivalRowList.add(
            RouteArrivalRow(
                routeName: "24",
                colorRGBO: COLOR_24,
                remainingStation: arrivalBusList[k]?.stationNm1 ?? "",
                remainingTime: arrivalBusList[k]?.predictTime1 ?? ""),
          );
          busArrivalRowList.add(const Padding(padding: EdgeInsets.all(14)));
          break;

        case "720-3":
          busArrivalRowList.add(
            RouteArrivalRow(
                routeName: "720-3",
                colorRGBO: COLOR_720_3,
                remainingStation: arrivalBusList[k]?.stationNm1 ?? "",
                remainingTime: arrivalBusList[k]?.predictTime1 ?? ""),
          );
          busArrivalRowList.add(const Padding(padding: EdgeInsets.all(14)));
          break;

        case "shuttle":
          busArrivalRowList.add(RouteArrivalRow(
              routeName: "셔틀",
              colorRGBO: COLOR_SHUTTLE,
              remainingStation: arrivalBusList[k]?.stationNm1 ?? "",
              remainingTime: arrivalBusList[k]?.predictTime1 ?? ""));
          busArrivalRowList.add(const Padding(padding: EdgeInsets.all(14)));
          break;
      }
    }

    busArrivalRowList[busArrivalRowList.length - 1] =
        const Padding(padding: EdgeInsets.all(7));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: busArrivalRowList,
      ),
    );
  }
}
