import 'package:flutter/material.dart';
import 'package:googlepretrazivac/utils/textVariables/textVariables.dart';

import 'MyWebView.dart';

class PretragaGoogle extends StatelessWidget {
  const PretragaGoogle({
    Key key,
    @required this.myController,
  }) : super(key: key);

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 250, //ovo nisam izdvajao jer je jedna linija stil
      child: Center(
        child: ElevatedButton(
            child: Text(textFieldText),
            onPressed: () async {
              var pretraga = myController.text;
              var pretrazi = googleSearch + pretraga.replaceAll(" ", "+");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyWebView(pretrazi)));

              print(pretrazi);
            }),
      ),
    );
  }
}
