import 'package:flutter/material.dart';
import 'package:monitor_app/utils/constants.dart';
import 'package:monitor_app/view/user_view/item/bus_route.dart';

class ArrivalSoonContainer extends StatefulWidget {
  const ArrivalSoonContainer({super.key});

  @override
  State<StatefulWidget> createState() => ArrivalSoonContainerState();
}

class ArrivalSoonContainerState extends State<ArrivalSoonContainer> {
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
            children: const [
              BusRoute(routeName: "720-3", colorRGBO: COLOR_720_3),
            ],
          )
        ],
      ),
    );
  }
}
