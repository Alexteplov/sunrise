import 'package:flutter/material.dart';
import 'package:sunrise/presentation/widgets/app_bar_widget.dart';
import 'package:sunrise/presentation/widgets/main_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context).appBar,
      body: MainBody(context).body,
    );
  }
}
