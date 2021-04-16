import 'package:flutter/material.dart';
import 'package:googlepretrazivac/interface/launchBrowserInterface.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchBrowserService implements LaunchBrowserInterface {
  @override
  Future<dynamic> launchBrowser() async {
    const url = 'https://www.klix.ba';
    if (await canLaunch(url)) {
      launch(
        url,
        forceSafariVC: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
