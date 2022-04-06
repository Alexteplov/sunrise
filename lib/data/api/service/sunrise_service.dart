import 'package:dio/dio.dart';
import 'package:sunrise/data/api/api_day.dart';
import 'package:sunrise/data/api/request/get_day_body.dart';
import 'package:sunrise/data/api/service/sunrise_service_const.dart';

class SunriseService {
  final Dio _dio = Dio(BaseOptions(baseUrl: baseUrl));

  Future<ApiDay> getDay(GetDayBody body) async {
    final response = await _dio.get('/json', queryParameters: body.toApi());
    return ApiDay.fromApi(response.data);
  }
}
