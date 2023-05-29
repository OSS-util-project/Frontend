import 'package:flutter/material.dart';
import 'package:monitor_app/utils/constants.dart';
import 'package:monitor_app/view/user_view/item/bus_route.dart';
import 'package:monitor_app/view/user_view/row/route_arrival_row.dart';

class RouteArrivalContainer extends StatefulWidget {
  const RouteArrivalContainer({super.key});

  @override
  State<StatefulWidget> createState() => RouteArrivalContainerState();
}

class RouteArrivalContainerState extends State<RouteArrivalContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "버스별 도착 정보",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(14)),
          RouteArrivalRow(
              routeName: "24",
              colorRGB0: COLOR_24,
              remainingStation: 3,
              remainingTime: 6),
          Padding(padding: EdgeInsets.all(14)),
          RouteArrivalRow(
              routeName: "720-3",
              colorRGB0: COLOR_720_3,
              remainingStation: 3,
              remainingTime: 6),
          Padding(padding: EdgeInsets.all(14)),
          RouteArrivalRow(
              routeName: "셔틀",
              colorRGB0: COLOR_SHUTTLE,
              remainingStation: 15,
              remainingTime: 15),
          Padding(padding: EdgeInsets.all(7)),
        ],
      ),
    );
  }
}
