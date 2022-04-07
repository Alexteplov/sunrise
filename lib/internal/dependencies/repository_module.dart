import 'package:sunrise/data/repository/day_data_repository.dart';
import 'package:sunrise/domain/repository/day_repository.dart';
import 'package:sunrise/internal/dependencies/api_module.dart';

class RepositoryModule {
  static final DayRepository _dayRepository =
      DayDataRepository(ApiModule.apiUtil);
  static DayRepository get dayRepository => _dayRepository;
}
