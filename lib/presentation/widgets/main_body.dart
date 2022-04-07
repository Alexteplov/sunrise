import 'package:flutter/material.dart';
import 'package:sunrise/generated/l10n.dart';
import 'package:sunrise/presentation/widgets/row_input.dart';

class MainBody {
  final BuildContext context;

  MainBody(this.context);

  SafeArea get body => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RowInput(context).rowBody,
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {}, child: Text(S.of(context).buttonName))
            ],
          ),
        ),
      );
}
