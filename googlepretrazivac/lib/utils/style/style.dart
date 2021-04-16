import 'package:flutter/material.dart';
import 'package:googlepretrazivac/utils/shared/sizeConfig.dart';

class Styles {
  static final Icon searchIcon = Icon(
    Icons.open_in_browser,
    color: Colors.red,
  );

  static final InputDecoration decorateInput = InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Pretraga',
  );

  static final TextStyle creditsStyle = TextStyle(
      fontSize: SizeConfig.screenWidth > 600 ? 22 : 16,
      color: SizeConfig.screenWidth > 600 ? Colors.red : Colors.blue,
      backgroundColor:
          SizeConfig.screenWidth > 600 ? Colors.white : Colors.amber);
}
