import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sunrise/generated/l10n.dart';

class AppBarWidget {
  final BuildContext context;

  AppBarWidget(this.context);

  AppBar get appBar => AppBar(
        title: Text(S.of(context).appBarTitle),
        centerTitle: true,
      );
}
