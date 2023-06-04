import 'package:flutter/material.dart';
import 'package:monitor_app/model/bus_data.dart';
import 'package:monitor_app/utils/constants.dart';
import 'package:monitor_app/view/user_view/item/bus_route.dart';

class ArrivalSoonContainer extends StatefulWidget {
  final List<BusData?> busDataList;

  const ArrivalSoonContainer({super.key, required this.busDataList});

  @override
  State<StatefulWidget> createState() =>
      ArrivalSoonContainerState(busDataList: busDataList);
}

class ArrivalSoonContainerState extends State<ArrivalSoonContainer> {
  late final List<BusData?> busDataList;
  List<BusRoute> busArrivalSoonList = [];

  ArrivalSoonContainerState({required List<BusData?> busDataList}) {
    Map<String, bool> arrivalBusList = {
      "24": busDataList[0]?.arrivalSoon ?? false,
      "720-3": busDataList[1]?.arrivalSoon ?? false,
      "shuttle": busDataList[2]?.arrivalSoon ?? false
    };

    for (var k in arrivalBusList.keys) {
      if (arrivalBusList[k] ?? false) {
        switch (k) {
          case "24":
            busArrivalSoonList
                .add(const BusRoute(routeName: "24", colorRGBO: COLOR_24));
            break;

          case "720-3":
            busArrivalSoonList.add(
                const BusRoute(routeName: "720-3", colorRGBO: COLOR_720_3));
            break;

          case "shuttle":
            busArrivalSoonList
                .add(const BusRoute(routeName: "셔틀", colorRGBO: COLOR_SHUTTLE));
            break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1)),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "버스가 곧 도착합니다!",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          const Padding(padding: EdgeInsets.all(14)),
          Row(
            children: busArrivalSoonList,
          )
        ],
      ),
    );
  }
}
