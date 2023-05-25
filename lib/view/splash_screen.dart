import 'dart:async';

import 'package:flutter/material.dart';
import 'package:monitor_app/view/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var timer = Timer(
        const Duration(seconds: 2),
        () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()))
            });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          "SplashScreen",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
