import 'package:flutter/material.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';

import 'package:clay_containers/clay_containers.dart';

class PvChatUtils{

  static messageMe(BuildContext context, bool liked, bool seen){
    Color bgColor = Colors.greenAccent[100];
    return Stack(
      children: [
        Align(
          alignment: Alignment(1, 1),
          child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 5.0, 14.0),
              child: Stack(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minWidth: liked ? 75.0 : 60.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: seen ? Colors.white.withOpacity(0.0)
                              : Colors.greenAccent[400],
                          width: 0.5,
                        ),
                        color: bgColor,
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
                        "Hello I'm Good abe \n  call youd d d d d d d d d d d d d f f f f f h",
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

  static messageYou(BuildContext context, bool liked, bool seen, StateSetter setState){
        Color bgColor = Colors.pink[100];
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 20.0, 14.0),
            child: Stack(
//                overflow: Overflow.visible,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: liked ? 75.0 : 60.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: seen ? Colors.white.withOpacity(0.0)
                              : Colors.pink[300],
                          width: 0.5,
                        ),
                        color: bgColor,
                        boxShadow: [
                          BoxShadow(
                            offset: seen ? Offset(0.5, 0.5)
                                : Offset(1.5, 1.5),
                            blurRadius: seen ? 2.0 : 5.0,
                            color: seen ? Colors.grey[700].withOpacity(0.0)
                                : Colors.pink[700],
                          ),
                        ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
//                        "",
                      "Hello Idoing babe \n tell me wh Idoing bab me wh Idoing ddd d d d d d d d d d dd d d d babe tell me wh",
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
      ],
    );
  }
}


//TODO: mesle secret chat beshe pm time dr gozasht, va oon dastane dinamit ro bezaram