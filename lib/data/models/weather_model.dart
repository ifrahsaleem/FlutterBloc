class WeatherModel {
  final dynamic temp;
  final dynamic pressure;
  final dynamic humidity;
  final dynamic tempMax;
  final dynamic tempMin;

  double get getTemp => temp - 272.5;
  double get getMaxTemp => tempMax - 272.5;
  double get getMinTemp => tempMin - 272.5;

  WeatherModel(
      this.temp, this.pressure, this.humidity, this.tempMax, this.tempMin);

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(json["temp"], json["pressure"], json["humidity"],
        json["temp_max"], json["temp_min"]);
  }
}
