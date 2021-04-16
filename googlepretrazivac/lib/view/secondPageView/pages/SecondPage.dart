import 'package:flutter/material.dart';
import 'package:googlepretrazivac/utils/shared/SizeConfig.dart';
import 'package:googlepretrazivac/utils/style/style.dart';
import 'package:googlepretrazivac/view/secondPageView/widgets/DoneByWidget.dart';
import 'package:googlepretrazivac/view/secondPageView/widgets/GoogleText.dart';
import 'package:googlepretrazivac/view/secondPageView/widgets/PretragaGoogle.dart';
import 'package:googlepretrazivac/view/secondPageView/widgets/TopIcon.dart';
import 'package:googlepretrazivac/view/secondPageView/widgets/youtubeScreen.dart';

class SecondPage extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          YoutubeScreen(),
          Center(
            child: Image.asset('assets/images/google.png'),
          ),
          TopIcon(),
          GmailNatpis(),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: SizeConfig.screenHeight * 0.2,
                  child: TextField(
                    controller: myController,
                    obscureText: true,
                    decoration: Styles.decorateInput,
                  ))),
          DoneByWidget(),
          PretragaGoogle(myController: myController),
        ],
      ),
    );
  }
}
