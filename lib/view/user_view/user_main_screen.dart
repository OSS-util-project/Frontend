import 'package:flutter/material.dart';

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
      body: Container(
        alignment: Alignment.topLeft,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(4)),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              padding: const EdgeInsets.all(2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "버스가 곧 도착합니다!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(4)),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "버스별 도착 정보",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Padding(padding: EdgeInsets.all(14)),
                  SizedBox(
                    height: 30,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "24",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("2정거장",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(
                            "5분 후",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          )
                        ]),
                  ),
                  const Padding(padding: EdgeInsets.all(14)),
                  SizedBox(
                    height: 30,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "24",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("2정거장",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(
                            "5분 후",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          )
                        ]),
                  ),
                  const Padding(padding: EdgeInsets.all(14)),
                  SizedBox(
                    height: 30,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "24",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text("2정거장",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(
                            "5분 후",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          )
                        ]),
                  ),
                  const Padding(padding: EdgeInsets.all(7)),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(4)),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              padding: const EdgeInsets.all(2),
              child: Column(
                children: const [
                  Text(
                    "도착 임박 알림",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
