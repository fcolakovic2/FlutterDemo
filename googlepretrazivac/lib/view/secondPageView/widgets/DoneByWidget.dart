import 'package:flutter/material.dart';

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
        "Done by Faris",
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.width > 600 ? 22 : 16,
            color: MediaQuery.of(context).size.width > 600
                ? Colors.red
                : Colors.blue,
            backgroundColor: MediaQuery.of(context).size.width > 600
                ? Colors.white
                : Colors.amber),
      ),
    );
  }
}
