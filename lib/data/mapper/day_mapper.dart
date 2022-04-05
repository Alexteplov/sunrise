import 'package:sunrise/data/api/api_day.dart';
import 'package:sunrise/domain/model/day.dart';

class DayMapper {
  static Day fromApi(ApiDay day) => Day(
        sunrise: DateTime.tryParse(day.sunrise) ?? DateTime.now(),
        sunset: DateTime.tryParse(day.sunset) ?? DateTime.now(),
        solarNoon: DateTime.tryParse(day.solarNoon) ?? DateTime.now(),
        dayLength: day.dayLength.toInt(),
      );
}
