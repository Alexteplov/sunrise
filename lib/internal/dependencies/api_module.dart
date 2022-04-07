import 'package:sunrise/data/api/api_util.dart';
import 'package:sunrise/data/api/service/sunrise_service.dart';

class ApiModule {
  static final ApiUtil _apiUtil = ApiUtil(SunriseService());

  static ApiUtil get apiUtil => _apiUtil;
}
