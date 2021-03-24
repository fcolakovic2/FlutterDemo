import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {

  static final headline=GoogleFonts.dosis(
    textStyle:_hedlajn.copyWith(
      fontSize:ScreenUtil().setSp(32),
    ),
  );

  static final subhedlajn =GoogleFonts.dosis(
    textStyle: _subhedlajn.copyWith(
      fontSize:ScreenUtil().setSp(22),
    ),
  );

  static final datumski =GoogleFonts.dosis(
    textStyle: _zaDatum.copyWith(
      fontSize:ScreenUtil().setSp(20),
    ),
  );



  static const _hedlajn = TextStyle(
    color:Colors.white,
    fontWeight:FontWeight.w700,
    fontStyle:FontStyle.italic,
  );

  static const _subhedlajn = TextStyle(
    color:Colors.white,
    fontWeight:FontWeight.w400,
  );

  static const _zaDatum = TextStyle(
    color:Colors.white,
    fontWeight:FontWeight.w200,
  );
}