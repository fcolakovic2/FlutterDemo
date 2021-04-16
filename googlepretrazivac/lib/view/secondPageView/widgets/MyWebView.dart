import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:googlepretrazivac/utils/textVariables/textVariables.dart';

class MyWebview extends StatefulWidget {
  String trazeno;
  MyWebview(String tekst) {
    trazeno = tekst;
  }

  @override
  _MyWebviewState createState() => _MyWebviewState();
}

class _MyWebviewState extends State<MyWebview> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        url: googleSearch +
            widget
                .trazeno); //fakticki ne treba vise googleSearch string jer imam svoj webview ali neka stoji radi demonstracije textVarijabli
  }
}
