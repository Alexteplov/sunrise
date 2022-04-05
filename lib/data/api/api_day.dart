class ApiDay {
  final String sunrise;
  final String sunset;
  final String solarNoon;
  final int dayLength;

  //ApiDay(this.sunrise, this.sunset, this.solarNoon, this.dayLength);

  ApiDay.fromApi(Map<String, dynamic> map)
      : sunrise = map['results']['sunrise'],
        sunset = map['results']['sunset'],
        solarNoon = map['results']['solar_noon'],
        dayLength = map['results']['day_length'];
}
