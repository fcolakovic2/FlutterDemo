import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:googlepretrazivac/utils/textVariables/textVariables.dart';

class MyWebView extends StatefulWidget {
  String trazeno;
  MyWebView(String tekst) {
    trazeno = tekst;
  }

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        url: googleSearch +
            widget
                .trazeno); //fakticki ne treba vise googleSearch string jer imam svoj webview ali neka stoji radi demonstracije textVarijabli
  }
}
