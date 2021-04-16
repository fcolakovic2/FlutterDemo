import 'package:flutter/material.dart';

class Ikonica extends StatelessWidget {
  const Ikonica({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.0,
      right: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new IconButton(
            icon: Icon(
              Icons.open_in_browser,
              color: Colors.red,
            ),
            onPressed: () {}),
      ),
    );
  }
}
