import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutteraplikacija/ul/common/quote_widget.dart';
import 'package:random_color/random_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

class QuoteScreen extends StatelessWidget {

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,width:350, height:660);
    return Scaffold(
      body: StreamBuilder(
        stream: firestore.collection('quotes').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return _LoadingIndicator();
          return PageView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context,index){
                final document=snapshot.data.docs[index];
                return QuoteWidget(
                  backgroundColor: _randomColor.randomColor(
                    colorBrightness: ColorBrightness.dark,
                  ),
                  quote: document['quote'],
                  author: document['author'],
                  datum: document['datum'],
                );
              }
          );
        },
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:CircularProgressIndicator(),
    );
  }
}

