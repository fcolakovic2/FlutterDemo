import 'package:flutter/material.dart';
import 'package:googlepretrazivac/interface/LaunchBrowserInterface/LaunchBrowserInterface.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchBrowserService implements LaunchBrowserInterface {
  @override
  void launchBrowser() async {
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
