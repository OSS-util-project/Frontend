import 'package:flutter/material.dart';
import 'package:monitor_app/view/user_view/container/arrival_notification_setting_container.dart';
import 'package:monitor_app/view/user_view/container/arrival_soon_container.dart';
import 'package:monitor_app/view/user_view/container/route_arrival_container.dart';

class UserMainScreen extends StatefulWidget {
  const UserMainScreen({super.key});

  @override
  State<StatefulWidget> createState() => UserMainScreenState();
}

class UserMainScreenState extends State<UserMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("죽전캠 버스 도착정보"),
          actions: [
            IconButton(onPressed: () => {}, icon: const Icon(Icons.logout))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: const [
                Padding(padding: EdgeInsets.all(4)),
                ArrivalSoonContainer(),
                Padding(padding: EdgeInsets.all(4)),
                RouteArrivalContainer(),
                Padding(padding: EdgeInsets.all(4)),
                ArrivalNotificationSettingsContainer()
              ],
            ),
          ),
        ));
  }
}
