class BusData {
  final String routeId;
  final String timeStamp;
  final String firstTime;
  final String lastTime;
  final String predictTime1;
  final String stationNm1;
  final String predictTime2;
  final String stationNm2;
  final bool isRunning;
  final bool arrivalSoon;

  BusData(
      {required this.routeId,
      required this.timeStamp,
      required this.firstTime,
      required this.lastTime,
      required this.predictTime1,
      required this.stationNm1,
      required this.predictTime2,
      required this.stationNm2,
      required this.isRunning,
      required this.arrivalSoon});

  factory BusData.fromJson(Map<String, dynamic> json) {
    return BusData(
        routeId: json['routeId'],
        timeStamp: json['timeStamp'],
        firstTime: json['firstTime'],
        lastTime: json['lastTime'],
        predictTime1: json['predictTime1'],
        stationNm1: json['stationNm1'],
        predictTime2: json['predictTime2'],
        stationNm2: json['stationNm2'],
        isRunning: json['isRunning'],
        arrivalSoon: json['arrivalSoon']);
  }
}
