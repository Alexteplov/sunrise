import 'package:sunrise/domain/state/home_state.dart';
import 'package:sunrise/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeState homeState() => HomeState(RepositoryModule.dayRepository);
}
