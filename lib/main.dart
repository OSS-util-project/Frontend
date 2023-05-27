import 'package:flutter/material.dart';
import 'package:monitor_app/utils/constants.dart';
import 'package:monitor_app/view/splash_screen.dart';
import 'package:monitor_app/view/user_view/user_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(ACCENT_COLOR)),
      title: "Monitor App",
      home: const UserMainScreen(),
    );
    // home: const SplashScreen());
  }
}
