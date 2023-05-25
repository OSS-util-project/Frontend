import 'package:flutter/material.dart';
import 'package:monitor_app/view/login_screen.dart';

class DeviceMonitorScreen extends StatefulWidget {
  const DeviceMonitorScreen({super.key});

  @override
  State<StatefulWidget> createState() => DeviceMonitorScreenState();
}

class DeviceMonitorScreenState extends State<DeviceMonitorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("버스 단말기 모니터링"),
        actions: [
          IconButton(
              onPressed: () => {
                    // TO DO: 로그아웃 기능 구현
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (route) => false)
                  },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        alignment: Alignment.center,
        child: Column(
          children: [
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "버스 단말기 상태 (A)",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(249, 157, 28, 50))),
                    child: const Text("로그 조회하기"),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.all(8)),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "배터리 수준: 80%",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "배터리 상태: 방전 중 (전압 4.141V, 온도 27.0°C)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "연결된 네트워크: DKU_WIFI",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "신호 세기: -45dBm",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ]),
            const Padding(padding: EdgeInsets.all(24)),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "버스 단말기 상태 (B)",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(249, 157, 28, 50))),
                    child: const Text("로그 조회하기"),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.all(8)),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "배터리 수준: 90%",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "배터리 상태: 방전 중 (전압 4.141V, 온도 27.0°C)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "연결된 네트워크: DKU_WIFI",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "신호 세기: -44dBm",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ]),
            const Padding(padding: EdgeInsets.all(24)),
            Column(children: [
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
                                    const Color(0xFFD9D9D9))),
                            onPressed: () => {
                                  // 핑 보내기
                                },
                            child: const Text(
                              "서버에 핑 보내기",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 2)),
                      SizedBox(
                        width: 140,
                        height: 35,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFD9D9D9))),
                            onPressed: () => {
                                  // 핑 보내기
                                },
                            child: const Text("셔틀버스 시간 수정",
                                style: TextStyle(color: Colors.black))),
                      ),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 2)),
                      SizedBox(
                        width: 140,
                        height: 35,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFD9D9D9))),
                            onPressed: () => {
                                  // 핑 보내기
                                },
                            child: const Text("정보 수동 업데이트",
                                style: TextStyle(color: Colors.black))),
                      )
                    ]),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12)),
                    Column(children: [
                      SizedBox(
                        width: 140,
                        height: 35,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFD9D9D9))),
                            onPressed: () => {
                                  // 핑 보내기
                                },
                            child: const Text("서버에 핑 보내기",
                                style: TextStyle(color: Colors.black))),
                      ),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 2)),
                      SizedBox(
                        width: 140,
                        height: 35,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFD9D9D9))),
                            onPressed: () => {
                                  // 핑 보내기
                                },
                            child: const Text("격려 메시지 수정",
                                style: TextStyle(color: Colors.black))),
                      ),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 2)),
                      SizedBox(
                        width: 140,
                        height: 35,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFD9D9D9))),
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
          ],
        ),
      ),
    );
  }
}
