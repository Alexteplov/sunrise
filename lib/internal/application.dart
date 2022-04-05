import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sunrise/generated/l10n.dart';
import 'package:sunrise/internal/custom_theme.dart';
import 'package:sunrise/internal/internal_const.dart';
import 'package:sunrise/presentation/home_screen.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: titleApp,
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.light,
      home: const HomeScreen(),
    );
  }
}
