import 'package:flutter/material.dart';
import 'package:sunrise/internal/custom_theme.dart';
import 'package:sunrise/internal/internal_const.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleApp,
      theme: CustomTheme.light,
    );
  }
}
