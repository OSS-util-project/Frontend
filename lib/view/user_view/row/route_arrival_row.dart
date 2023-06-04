import 'package:flutter/material.dart';

import '../item/bus_route.dart';

class RouteArrivalRow extends StatelessWidget {
  final String routeName;
  final int colorRGBO;
  final String remainingStation;
  final String remainingTime;

  const RouteArrivalRow(
      {super.key,
      required this.routeName,
      required this.colorRGBO,
      required this.remainingStation,
      required this.remainingTime});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        BusRoute(routeName: routeName, colorRGBO: colorRGBO),
        SizedBox(
          width: 80,
          child: Text(remainingStation,
              textAlign: TextAlign.right,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          width: 80,
          child: Text(
            "$remainingTime분 후",
            textAlign: TextAlign.right,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        )
      ]),
    );
  }
}
