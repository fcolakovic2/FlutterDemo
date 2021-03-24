import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutteraplikacija/ul/style/theme_dart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

class QuoteWidget extends StatelessWidget {

  @required final Color backgroundColor;
  @required final String quote, author, datum;

  const QuoteWidget({Key key, this.backgroundColor, this.quote, this.author, this.datum}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width:350, height:660);
    return Container(
      width:ScreenUtil.screenWidthDp,
      color:backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(16),
        vertical: ScreenUtil().setHeight(48),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // kreni horizontalno po kolonama, prvo lijevo, pa centrirano pa onda datum desno
        children:<Widget>[
          Image.asset('assets/iconfinder_quote2_4918929.png',
            color: Colors.white.withOpacity(0.5),
            width:ScreenUtil().setWidth(100),
            height:ScreenUtil().setHeight(100),
          ),
          Expanded(
            child: Center(
              child: Text(
                quote,
                style: ThemeText.headline,
              ),
            ),
          ),
          Center(
            child: Text(
              author,
              style:ThemeText.subhedlajn,
            ),
          ),
          Container(
              alignment: Alignment.bottomRight,
              child: Text(
                datum,
                style: ThemeText.datumski,
              )),
        ],
      ),
    );
  }
}


