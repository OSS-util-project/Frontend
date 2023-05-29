class BusData {
  final String firstTime;
  final String lastTime;
  final String predictTime1;
  final String stationNm1;
  final String predictTime2;
  final String stationNm2;
  final bool isRunning;
  final bool arrivalSoon;

  BusData(
      {required this.firstTime,
      required this.lastTime,
      required this.predictTime1,
      required this.stationNm1,
      required this.predictTime2,
      required this.stationNm2,
      required this.isRunning,
      required this.arrivalSoon});
}
