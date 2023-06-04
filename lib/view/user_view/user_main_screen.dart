import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:monitor_app/utils/constants.dart';
import 'package:monitor_app/view/login_screen.dart';
import 'package:monitor_app/view/user_view/container/arrival_notification_setting_container.dart';
import 'package:monitor_app/view/user_view/container/arrival_soon_container.dart';
import 'package:monitor_app/view/user_view/container/route_arrival_container.dart';

import '../../model/bus_data.dart';

class UserMainScreen extends StatefulWidget {
  const UserMainScreen({super.key});

  @override
  State<StatefulWidget> createState() => UserMainScreenState();
}

class UserMainScreenState extends State<UserMainScreen> {
  late Timer timer;

  List<BusData> busDataList = [];

  BusData? busData24;
  BusData? busData720_3;
  BusData? busDataShuttle;

  UserMainScreenState() {
    getData("24");
    getData("720-3");
    getData("shuttle");

    timer = Timer(const Duration(seconds: REQUEST_INTERVAL_SECONDS), () {
      getData("24");
      getData("720-3");
      getData("shuttle");
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  static Future<BusData> getBusArrivalData(String routeName) async {
    const String baseUrl =
        "https://2ot8ocxpaf.execute-api.ap-northeast-2.amazonaws.com/businfo";
    final response = await http.get(Uri.parse("$baseUrl?bus=$routeName"));
    if (response.statusCode == 200) {
      debugPrint(response.body.toString());
      return BusData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to retrieve bus $routeName data');
    }
  }

  // TO DO: 데이터 가져오기 (30초마다)
  void getData(String routeName) async {
    final response = await getBusArrivalData(routeName);

    setState(() {
      switch (routeName) {
        case "24":
          busData24 = response;
          break;

        case "720-3":
          busData720_3 = response;
          break;

        case "shuttle":
          busDataShuttle = response;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("죽전캠 버스 도착정보"),
          actions: [
            IconButton(
                onPressed: () => {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()))
                    },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(4)),
                ArrivalSoonContainer(
                  busDataList: [busData24, busData720_3, busDataShuttle],
                ),
                const Padding(padding: EdgeInsets.all(4)),
                RouteArrivalContainer(
                  busDataList: [busData24, busData720_3, busDataShuttle],
                ),
                const Padding(padding: EdgeInsets.all(4)),
                const ArrivalNotificationSettingsContainer()
              ],
            ),
          ),
        ));
  }
}
