import 'package:flutter/material.dart';

class BusRoute extends StatelessWidget {
  final String routeName;
  final int colorRGBO;

  const BusRoute({super.key, required this.routeName, required this.colorRGBO});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: const BorderRadius.all(Radius.elliptical(8.0, 8.0)),
        color: Color(colorRGBO),
      ),
      child: Text(
        routeName,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
