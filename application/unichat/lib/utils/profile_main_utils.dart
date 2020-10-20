import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/utils/myArc.dart';



class ProfileMainUtils{

  static alertDialog(BuildContext context, String text, Color fontColor, Color backgroundColor){
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
      child: AlertDialog(
        title: Text(
          text,
          textAlign: TextAlign.center,
        ),
        titleTextStyle: TextStyle(
          color: fontColor.withOpacity(1.0),
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: backgroundColor.withOpacity(0.7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(width: 2, color: backgroundColor.withOpacity(1.0)),
        ),
        actions: [
          InvertColors(
            child: FlatButton(
              child: Text(
                "OK",
                style: TextStyle(color: backgroundColor.withOpacity(1.0)),
              ),
              onPressed: (){
                print("ok");
                Navigator.pop(context);
              },
            ),
          ),
        ],
        content: Text("Is in 125 Profile"),
      ),
    );
  }

  static optionBackground(top, right, left, inLeft, inRight, backgroundColor, fontColor){
    double buttonSizeWidth = 40;
    double buttonSizeHeight= 42;
    return Positioned(
      top: top,
      right: right,
      left: left,
      child: Transform.rotate(
        angle: inLeft ? 4.71 :  inRight ? -4.71 : 0.0,
        child: Container(
          height: buttonSizeHeight,
          width: buttonSizeWidth,
          child: MyArc(
            diameter: 300,
            color: backgroundColor.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}