import 'package:flutter/material.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';

import 'package:clay_containers/clay_containers.dart';

class PvChatUtils{

  static messageMe(BuildContext context, bool liked, bool seen){
//    Color color = Colors.lightGreen[100];
    Color color = Color(0xFFF2F2F2);
    return Stack(
      children: [
        Align(
          alignment: Alignment(1, 1),
          child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 5.0, 14.0),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: liked ? 75.0 : 60.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: seen ? Colors.white.withOpacity(0.0)
                              : Colors.greenAccent[400],
                          width: 0.5,
                        ),
                        color: Colors.greenAccent[100],
                          boxShadow: [
                            BoxShadow(
                                offset: seen ? Offset(0.5, 0.5)
                                    : Offset(1.5, 1.5),
                                blurRadius: seen ? 2.0 : 5.0,
                                color: seen ? Colors.grey[700].withOpacity(0.0)
                                    : Colors.greenAccent[700],
                            ),
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Text(
                        "Hello I'm Good  how are you doing babe \n tell me when can I call you",
//                          "",
                        ),
                      ),
                    ),
                  ),
                  liked ? Positioned(
                    bottom: 0.5,
                    right: 50.0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red[700],
                      size: 12.0,
                    ),
                  ) : Text(''),
                  Positioned(
                    bottom: 0,
                    right: 15,
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

  static messageYou(BuildContext context, bool liked, StateSetter setState){
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 20.0, 14.0),
            decoration: BoxDecoration(
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
//                    width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.pink[100].withOpacity(1.0),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 1.0,
                            color: Colors.grey[700]
                        ),
                      ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Hello Idoing babe \n tell me wh",

                    ),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  top: 10.0,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red[700],
                    size: 18.0,
                  ),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 0.0,
                  child: Text(
                    "14:05",
                    style: TextStyle(
                      color: Colors.red[900].withOpacity(0.7),
                      fontSize: 11.0,
                    ),
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