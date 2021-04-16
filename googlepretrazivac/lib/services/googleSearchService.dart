import 'package:flutter/material.dart';
import 'package:googlepretrazivac/interface/googleSearchInterface.dart';
import 'package:googlepretrazivac/utils/textVariables/textVariables.dart';
import 'package:googlepretrazivac/view/secondPageView/widgets/myWebView.dart';

class GoogleSearchService implements GoogleSearchInterface {
  @override
  Future<dynamic> launchGoogle(
      BuildContext context, String kontrolerovTekst) async {
    var pretraga = kontrolerovTekst;
    var pretrazi = googleSearch + pretraga.replaceAll(" ", "+");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyWebView(pretrazi)));
  }
}
