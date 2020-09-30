import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/widgets/myArc.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:unichat/widgets/profile_edit_page1.dart';


class ProfileEditPage4 extends StatefulWidget {
  @override
  _ProfileEditPage4State createState() => _ProfileEditPage4State();
}

class _ProfileEditPage4State extends State<ProfileEditPage4> {
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: [
              InvertColors(
                child: Text(
                  "Favorites: ",
                  style: TextStyle(
                    color: backgroundColor.withOpacity(1.0),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
              ),
              SizedBox(height: size.width * 0.01),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(height: size.width * 0.08),
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.07,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.directions_run,
                                size: 15.0,
                                color: fontColor,
                              ),
                              InvertColors(
                                child: Text(
                                  "Sport: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: backgroundColor.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.07,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.book,
                                size: 15.0,
                                color: fontColor,
                              ),
                              InvertColors(
                                child: Text(
                                  "Book: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: backgroundColor.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.07,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_movies,
                                size: 15.0,
                                color: fontColor,
                              ),
                              InvertColors(
                                child: Text(
                                  "Movie: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: backgroundColor.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.07,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.tv,
                                size: 15.0,
                                color: fontColor,
                              ),
                              InvertColors(
                                child: Text(
                                  "TV Series: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: backgroundColor.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.07,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.music_note,
                                size: 15.0,
                                color: fontColor,
                              ),
                              InvertColors(
                                child: Text(
                                  "Music: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: backgroundColor.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.07,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.videogame_asset,
                                size: 15.0,
                                color: fontColor,
                              ),
                              InvertColors(
                                child: Text(
                                  "Game: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: backgroundColor.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.07,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.airplanemode_active,
                                size: 15.0,
                                color: fontColor,
                              ),
                              InvertColors(
                                child: Text(
                                  "To Travel: ",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: backgroundColor.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.07,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.favorite_sport,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.07,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.favorite_book,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.07,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.favorite_movie,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.07,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.favorite_tv_series,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.07,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.favorite_music,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.07,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.favorite_game,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.07,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.favorite_to_travel,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        InvertColors(
          child: Align(
            alignment: Alignment(0, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: backgroundColor.withOpacity(1.0),
                  onPressed: (){
                    print("Go To Page 3");
                    setState(() {
                      profileStatesProvider.setPage4(false);
                      profileStatesProvider.setPage3(true);
                    });
                  },
                ),
                Text(
                  "4/6",
                  style: TextStyle(
                    color: backgroundColor.withOpacity(1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    print("Go To Page 5");
                    setState(() {
                      profileStatesProvider.setPage4(false);
                      profileStatesProvider.setPage5(true);
                    });
                  },
                  icon: Icon(Icons.arrow_forward),
                  color: backgroundColor.withOpacity(1.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
