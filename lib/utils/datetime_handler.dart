import 'package:intl/intl.dart';

String getNowTimeStamp() {
  DateTime now = DateTime.now();
  String formattedDateTime = DateFormat('yyyy-MM-dd hh:mm:ss').format(now);
  return formattedDateTime;
}
