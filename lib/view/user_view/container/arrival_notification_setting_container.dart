import 'package:flutter/material.dart';

class ArrivalNotificationSettingsContainer extends StatefulWidget {
  const ArrivalNotificationSettingsContainer({super.key});

  @override
  State<StatefulWidget> createState() =>
      ArrivalNotificationSettingsContainerState();
}

class ArrivalNotificationSettingsContainerState
    extends State<ArrivalNotificationSettingsContainer> {
  bool useNotification = false;
  bool useRingNotification = false;
  bool useVibrateNotification = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(border: Border.all(width: 1)),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "도착 임박 알림",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(7),
          ),
          const Text(
            "휴대전화의 현재 위치가 치대병원 정류장과 가까이 있을 때,\n버스가 곧 도착하면 알림이 울립니다.",
            style: TextStyle(fontSize: 13),
          ),
          const Padding(
            padding: EdgeInsets.all(7),
          ),
          const Text(
            "해당 기능을 사용하려면,\n위치 서비스가 켜져 있어야 합니다.\n(위치 정보를 서버에 전송하지 않습니다.)",
            style: TextStyle(fontSize: 13),
          ),
          const Padding(
            padding: EdgeInsets.all(7),
          ),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "알림 사용하기",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Checkbox(
                    value: useNotification,
                    onChanged: (value) {
                      setState(() {
                        useNotification = value ?? false;
                      });
                    })
              ],
            )
          ]),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "알림이 울릴 때 소리 알림",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Checkbox(
                    value: useRingNotification,
                    onChanged: (value) {
                      setState(() {
                        useRingNotification = value ?? false;
                      });
                    })
              ],
            )
          ]),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "알림이 울릴 때 진동 알림",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Checkbox(
                    value: useVibrateNotification,
                    onChanged: (value) {
                      setState(() {
                        useVibrateNotification = value ?? false;
                      });
                    })
              ],
            )
          ])
        ],
      ),
    );
  }
}
