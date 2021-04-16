import 'package:flutter/material.dart';
import 'package:googlepretrazivac/utils/shared/SizeConfig.dart';

class Styles {
  static final Icon searchIcon = Icon(
    Icons.open_in_browser,
    color: Colors.red,
  );

  static final InputDecoration decorateInput = InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Pretraga',
  );
}
