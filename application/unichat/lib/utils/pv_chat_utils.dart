import 'package:flutter/material.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';

import 'package:clay_containers/clay_containers.dart';

class PvChatUtils{

  static messageMe(BuildContext context, String text, bool liked, bool seen){
    Size size = MediaQuery.of(context).size;
    Color bgColor = Colors.greenAccent[100];
//    double iconSize = size.width * 0.04;

    return Stack(
      children: [
        Align(
          alignment: Alignment(1, 1),
          child: Container(
              margin: EdgeInsets.fromLTRB(30.0, 0.0, 5.0, 14.0),
              child: Stack(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minWidth: liked ? 75.0 : 60.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: seen ? Colors.transparent
                              : Colors.greenAccent[400],
                          width: 0.5,
                        ),
                        color: bgColor,
                          boxShadow: [
                            BoxShadow(
                                offset: seen ? Offset(0.5, 0.5)
                                    : Offset(1.5, 1.5),
                                blurRadius: seen ? 2.0 : 5.0,
                                color: seen ? Colors.transparent
                                    : Colors.greenAccent[700],
                            ),
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Text(
                        text,
                        ),
                      ),
                    ),
                  ),
                  liked ? Positioned(
                    bottom: 0.5,
                    right: size.width * 0.14,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red[700],
                      size: 12.0,
                    ),
                  ) : Text(''),
                  Positioned(
                    bottom: 0,
                    right: size.width * 0.04,
                    child:  ClayText(
                      "00:00",
                      emboss: seen ? true : false,
                      size: 11.0,
                      depth: 100,
                    ),
                  ),
                ],
              )
          ),
        ),
      ],
    );
  }

  static messageYou(BuildContext context, String text, bool liked, bool seen, StateSetter setState){
        Color bgColor = Colors.pink[100];
        Size size = MediaQuery.of(context).size;
        double iconSize = size.width * 0.04;
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 30.0, 14.0),
            child: Stack(
//                overflow: Overflow.visible,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: liked ? 75.0 : 60.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: seen ? Colors.transparent
                              : Colors.pink[300],
                          width: 0.5,
                        ),
                        color: bgColor,
                        boxShadow: [
                          BoxShadow(
                            offset: seen ? Offset(0.5, 0.5)
                                : Offset(1.5, 1.5),
                            blurRadius: seen ? 2.0 : 5.0,
                            color: seen ? Colors.transparent
                                : Colors.pink[700],
                          ),
                        ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
                        text,
                      ),
                    ),
                  ),
                ),
                liked ? Positioned(
                  bottom: 0.5,
                  right: size.width * 0.15,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red[700],
                    size: iconSize,
                  ),
                ) : Text(''),
                Positioned(
                  bottom: 0,
                  right: size.width * 0.04,
                  child:  ClayText(
                    "00:00",
                    emboss: seen ? true : false,
                    size: 11.0,
                    depth: 100,
                  ),
                ),
              ],
            )
        ),
      ],
    );
  }
}


//TODO: mesle secret chat beshe pm time dr gozasht, va oon dastane dinamit ro bezaram