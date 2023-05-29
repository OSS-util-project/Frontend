import 'package:flutter/material.dart';
import 'package:monitor_app/view/manager_view/device_monitor_screen.dart';
import 'package:monitor_app/view/sign_up_screen.dart';
import 'package:monitor_app/view/user_view/user_main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  String id = "";
  String password = "";

  late TextEditingController _idController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _idController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "lib/resource/dku_logo.png",
              width: 200,
              height: 200,
            ),
            SizedBox(
              width: 270,
              height: 60,
              child: TextField(
                controller: _idController,
                decoration: const InputDecoration(
                    hintText: "아이디",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(6, 6)))),
                onChanged: (value) {
                  setState(() {
                    id = _idController.text;
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(4)),
            SizedBox(
              width: 270,
              height: 60,
              child: TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(
                    hintText: "비밀번호",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(6, 6)))),
                onChanged: (value) {
                  setState(() {
                    password = _passwordController.text;
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            SizedBox(
              width: 270,
              height: 60,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(249, 157, 28, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  onPressed: () => {
                        if (id == "admin" && password == "admin")
                          {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DeviceMonitorScreen()))
                          }
                        else
                          {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const UserMainScreen()))
                          }
                      },
                  child: const Text(
                    "로그인",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
                width: 270,
                height: 60,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFF5F5F5)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    onPressed: () => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()))
                        },
                    child: const Text(
                      "회원가입",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ))),
          ],
        ),
      ),
    );
  }
}
