import 'package:flutter/material.dart';
import 'package:sunrise/generated/l10n.dart';

class RowInput {
  final TextEditingController _latController = TextEditingController();
  final TextEditingController _lngController = TextEditingController();
  final BuildContext context;
  static const TextInputType _keyboardType =
      TextInputType.numberWithOptions(decimal: true, signed: true);

  RowInput(this.context);

  Row get rowBody => Row(
        children: [
          _textField(
              cnt: _latController,
              ktype: _keyboardType,
              hint: S.of(context).latitude),
          const SizedBox(
            height: 20.0,
          ),
          _textField(
              cnt: _lngController,
              ktype: _keyboardType,
              hint: S.of(context).longitude),
        ],
      );
}

Widget _textField(
        {required TextEditingController cnt,
        required TextInputType ktype,
        required String hint}) =>
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: cnt,
          keyboardType: ktype,
          decoration: InputDecoration(hintText: hint),
        ),
      ),
    );
