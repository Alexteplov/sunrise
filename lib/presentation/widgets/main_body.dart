import 'package:flutter/material.dart';
import 'package:sunrise/generated/l10n.dart';

class MainBody {
  final BuildContext context;

  MainBody(this.context);

  SafeArea get body => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {}, child: Text(S.of(context).buttonName))
            ],
          ),
        ),
      );
}
