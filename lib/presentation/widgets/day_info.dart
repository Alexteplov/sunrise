import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sunrise/domain/state/home_state.dart';
import 'package:sunrise/internal/dependencies/home_module.dart';

class DayInfo extends StatefulWidget {
  const DayInfo({Key? key}) : super(key: key);

  @override
  State<DayInfo> createState() => _DayInfoState();
}

class _DayInfoState extends State<DayInfo> {
  late HomeState _homeState;
  @override
  void initState() {
    super.initState();
    _homeState = HomeModule.homeState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return _homeState.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Восход: ${_homeState.day.sunrise.toLocal()}'),
                  Text('Заход: ${_homeState.day.sunset.toLocal()}'),
                  Text('Полдень: ${_homeState.day.solarNoon.toLocal()}'),
                  Text(
                      'Продолжительность: ${Duration(seconds: _homeState.day.dayLength)}'),
                ],
              );
      },
    );
  }
}
