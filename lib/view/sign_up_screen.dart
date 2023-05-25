import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<StatefulWidget> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  late TextEditingController _nameController;
  late TextEditingController _idController;
  late TextEditingController _checkPasswordController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _idController = TextEditingController();
    _checkPasswordController = TextEditingController();
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
    String name = "";
    String id = "";
    String password = "";
    String checkPassword = "";

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
                controller: _nameController,
                decoration: const InputDecoration(
                    hintText: "이름",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(6, 6)))),
                onSubmitted: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(7)),
            SizedBox(
              width: 270,
              height: 60,
              child: TextField(
                controller: _idController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: "아이디 (이메일 형식)",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(6, 6)))),
                onSubmitted: (value) {
                  setState(() {
                    id = value;
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(7)),
            SizedBox(
              width: 270,
              height: 60,
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "비밀번호",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(6, 6)))),
                onSubmitted: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(2)),
            SizedBox(
              width: 270,
              height: 60,
              child: TextField(
                controller: _checkPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "비밀번호 확인",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(6, 6)))),
                onSubmitted: (value) {
                  setState(() {
                    checkPassword = value;
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
                        // TO DO:
                        // 1) 회원정보 유효성 체크
                        //    -> 비밀번호, 비밀번호 확인 부분 일치
                        // 2) 유효한 정보라면 서버에 데이터 전송
                        // 팝업창 중간에 띄우기
                        // 3) 이후 현재 화면 pop

                        Navigator.pop(context)
                      },
                  child: const Text(
                    "회원가입",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
                width: 270,
                height: 40,
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
                          // TO DO:
                          // 1) 만약 입력중인 form이 있다면 팝업창으로 묻기
                          // 2) 확인 / 취소 선택지를 제공하여, 확인을 누르면 현재화면 pop

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()))
                        },
                    child: const Text(
                      "로그인 화면으로 돌아가기",
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
