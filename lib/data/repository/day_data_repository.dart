import 'package:sunrise/data/api/api_util.dart';
import 'package:sunrise/domain/model/day.dart';
import 'package:sunrise/domain/repository/day_repository.dart';

class DayDataRepository extends DayRepository {
  final ApiUtil _apiUtil;

  DayDataRepository(this._apiUtil);

  @override
  Future<Day> getDay({double? latitude, double? longitude}) {
    return _apiUtil.getDay(latitude: latitude = 0, longitude: longitude = 0);
  }
}
