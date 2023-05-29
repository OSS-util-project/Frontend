import 'package:firebase_core/firebase_core.dart';
import 'package:monitor_app/provider/bus_data_provider.dart';
import 'package:monitor_app/provider/device_status_data_provider.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:monitor_app/utils/constants.dart';
import 'package:monitor_app/view/splash_screen.dart';

void initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

void main() {
  initFirebase();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => BusDataProvider()),
      ChangeNotifierProvider(create: (_) => DeviceStatusDataProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(ACCENT_COLOR)),
      title: "Monitor App",
      home: const SplashScreen(),
    );
    // home: const SplashScreen());
  }
}
