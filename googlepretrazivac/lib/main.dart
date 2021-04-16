import 'dart:async';
import 'package:flutter/material.dart';
import 'package:googlepretrazivac/view/secondPageView/pages/secondPage.dart';
import 'package:page_transition/page_transition.dart';

import 'utils/shared/SizeConfig.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft, child: SecondPage())));
    return Scaffold(
      appBar: AppBar(
        title: Text("Image from assets"),
      ),
      body: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.5,
            width: SizeConfig.screenWidth * 1,
            color: Colors.blue,
            child: Center(
              //trebalo bi da ide sa containerom u view jer nemam iskljucivo samo stil ovdje
              child: Image.asset('assets/images/google.png'), //   <-- image
            ),
          ),
        ],
      ),
    );
  }
}
