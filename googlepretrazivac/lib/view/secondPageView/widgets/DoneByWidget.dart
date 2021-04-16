import 'package:flutter/material.dart';
import 'package:googlepretrazivac/utils/shared/sizeConfig.dart';
import 'package:googlepretrazivac/utils/style/style.dart';
import 'package:googlepretrazivac/utils/textVariables/textVariables.dart';

class DoneByWidget extends StatelessWidget {
  const DoneByWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 30,
      child: Text(
        credits,
        style: Styles.creditsStyle,
      ),
    );
  }
}
