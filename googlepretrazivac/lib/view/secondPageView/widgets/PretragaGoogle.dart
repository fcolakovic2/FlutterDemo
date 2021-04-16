import 'package:flutter/material.dart';

import 'MojWebView.dart';

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
            child: Text("Pretrazi"),
            onPressed: () async {
              var pretraga = myController.text;
              var konacnaPretraga = "https://www.google.com/search?q=";
              var pretrazi = konacnaPretraga + pretraga.replaceAll(" ", "+");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MojWebview(pretrazi)));

              print(pretrazi);
            }),
      ),
    );
  }
}
