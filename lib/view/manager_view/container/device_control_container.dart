import 'package:flutter/material.dart';
import 'package:monitor_app/utils/constants.dart';

class DeviceControlContainer extends StatelessWidget {
  const DeviceControlContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "명령 보내기 (단말기 A, B 순서)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.all(10))
          ],
        ),
        const Padding(padding: EdgeInsets.all(8)),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                SizedBox(
                  width: 140,
                  height: 35,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(COLOR_CONSOLE_BUTTON))),
                      onPressed: () => {
                            // 핑 보내기
                          },
                      child: const Text(
                        "서버에 핑 보내기",
                        style: TextStyle(color: Colors.black),
                      )),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 2)),
                SizedBox(
                  width: 140,
                  height: 35,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(COLOR_CONSOLE_BUTTON))),
                      onPressed: () => {
                            // 핑 보내기
                          },
                      child: const Text("셔틀버스 시간 수정",
                          style: TextStyle(color: Colors.black))),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 2)),
                SizedBox(
                  width: 140,
                  height: 35,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(COLOR_CONSOLE_BUTTON))),
                      onPressed: () => {
                            // 핑 보내기
                          },
                      child: const Text("정보 수동 업데이트",
                          style: TextStyle(color: Colors.black))),
                )
              ]),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 12)),
              Column(children: [
                SizedBox(
                  width: 140,
                  height: 35,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(COLOR_CONSOLE_BUTTON))),
                      onPressed: () => {
                            // 핑 보내기
                          },
                      child: const Text("서버에 핑 보내기",
                          style: TextStyle(color: Colors.black))),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 2)),
                SizedBox(
                  width: 140,
                  height: 35,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(COLOR_CONSOLE_BUTTON))),
                      onPressed: () => {
                            // 핑 보내기
                          },
                      child: const Text("격려 메시지 수정",
                          style: TextStyle(color: Colors.black))),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 2)),
                SizedBox(
                  width: 140,
                  height: 35,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(COLOR_CONSOLE_BUTTON))),
                      onPressed: () => {
                            // 핑 보내기
                          },
                      child: const Text("정보 수동 업데이트",
                          style: TextStyle(color: Colors.black))),
                )
              ]),
            ],
          ),
        )
      ]),
    );
  }
}
