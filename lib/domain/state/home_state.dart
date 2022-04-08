import 'package:mobx/mobx.dart';
//import 'package:meta/meta.dart';
import 'package:sunrise/domain/model/day.dart';
import 'package:sunrise/domain/repository/day_repository.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  final DayRepository _dayRepository;
  HomeStateBase(this._dayRepository);

  @observable
  late Day day;

  @observable
  bool isLoading = false;

  @action
  Future<void> getDay({
    required double latitude,
    required double longitude,
  }) async {
    isLoading = true;
    final data =
        await _dayRepository.getDay(latitude: latitude, longitude: longitude);
    day = data;
    isLoading = false;
  }
}
