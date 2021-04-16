import 'package:flutter/material.dart';
import 'package:googlepretrazivac/utils/textVariables/textVariables.dart';
import 'package:googlepretrazivac/viewModel/LaunchBrowserViewModel.dart';
import 'package:url_launcher/url_launcher.dart';

class GmailNatpis extends StatelessWidget {
  const GmailNatpis({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 50,
        right: 30,
        child: InkWell(
            child: Text(gmailText),
            onTap: () {
              launchBrowser();
            }));
  }
}
