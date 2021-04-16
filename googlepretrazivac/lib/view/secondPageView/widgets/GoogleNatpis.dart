import 'package:flutter/material.dart';
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
            child: Text("Gmail"),
            onTap: () async {
              const url = 'https://www.klix.ba';
              if (await canLaunch(url)) {
                launch(
                  url,
                  forceSafariVC: false,
                );
              } else {
                throw 'Could not launch $url';
              }
            }));
  }
}
