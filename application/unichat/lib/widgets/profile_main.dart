import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/widgets/my_arc.dart';

class ProfileMain extends StatefulWidget {
  @override
  _ProfileMainState createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;
  Color lastBackgroundColor;
  Color lastFontColor;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStateProvider profileStateProvider = Provider.of<ProfileStateProvider>(context);

    return Stack(
      children: <Widget>[
        Container(
          width: size.width * 0.85,
          height: size.height * 0.70,
          margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: size.width * 0.25,
                      width: size.width * 0.25,
                      margin: EdgeInsets.only(right: size.width * 0.03),
                      decoration: BoxDecoration(
//                              color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Michael B Jordan.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: size.width * 0.07),
                            Text(
                              "Ali Rn ",
                              style: TextStyle(
                                color: fontColor.withOpacity(1.0),
                              ),
                            ),
                            SizedBox(height: size.width * 0.03),
                            Container(
                              width: size.width * 0.45,
//                                    color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Icon(
                                    Icons.bubble_chart,
                                    size: 16.0,
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  Text(
                                    "22",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),
                                  ),
                                  SizedBox(width: size.width * 0.04),
                                  Icon(
                                    Icons.pin_drop,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  Container(
                                    width: size.width * 0.25,
                                    child: Text(
                                      "Tehran ",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: fontColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: size.width * 0.03),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.phone,
                                  size: 16.0,
                                  color: fontColor,
                                ),
                                SizedBox(width:size.width * 0.01),
                                Container(
                                  width: size.width * 0.35,
                                  child: Text(
                                    "0903785305509",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: fontColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
//                              Positioned(
//                                bottom: 0.0,
//                                child: Image.asset(
//                                  "assets/images/icons/couple want to kiss.png",
//                                  height: size.width * 0.25,
//                                  width: size.width * 0.3,
//                                  fit: BoxFit.cover,
//                                ),
//                              ),
                      ],
                    ),
                  ],
                ),
                Expanded(
//                        width: size.width * 0.85,
//                        height: size.height * 0.48,
                  child: ListView(
//                          primary: false,
                    padding: EdgeInsets.all(0.0),
                    children: [
                      SizedBox(height: size.width * 0.04),
                      Container(
                        width: size.width * 0.7,
                        height: size.width * 0.2,
                        padding: EdgeInsets.all(size.width * 0.03,),
                        decoration: BoxDecoration(
                          color: backgroundColor.withOpacity(0.0),
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(width: 0.5, color: backgroundColor.withOpacity(1.0)),
                        ),
                        child: Text(
                          "Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                          ),
                        ),
                      ),
                      SizedBox(height: size.width * 0.04),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/icons/instagram-icon.png",
                            width: size.width * 0.08,
                            height: size.width * 0.08,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Admin",
                            style: TextStyle(
                              color: fontColor,
                            ),
                          ),
                        ],
                      ),
//                      SizedBox(height: size.width * 0.02),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/icons/instagram-icon.png",
                            width: size.width * 0.08,
                            height: size.width * 0.08,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Ali_Rn_",
                            style: TextStyle(
                              color: fontColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.width * 0.02),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left:3.0),
                            child: Image.asset(
                              "assets/images/icons/telegram-icon.png",
                              width: size.width * 0.06,
                              height: size.width * 0.06,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            " Al1Rn",
                            style: TextStyle(
                              color: fontColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.width * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.directions_run,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Football",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.videogame_asset,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Game",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.tv,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "TV Series",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.tv,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "TV Series",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.library_books,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Book",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.movie,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Movie",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.airplanemode_active,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Wants to travel",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.airplanemode_active,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Wants to travel",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: size.width * 0.04),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 39.0,
          child: Container(
            height: 30.0,
            width: 30.0,
            child: MyArc(
              diameter: 300,
              color: backgroundColor.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          top: -9.0,
          right: 30.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: 18,
              icon: Icon(Icons.mode_edit),
              onPressed: (){
                setState(() {
                  lastBackgroundColor = backgroundColor;
                  lastFontColor = fontColor;
                  profileStateProvider.setEdit(true);
                });
                print("EDIT");
              },
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 79.0,
          child: Container(
            height: 30.0,
            width: 30.0,
            child: MyArc(
              diameter: 300,
              color: backgroundColor.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          top: -9.0,
          right: 70.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: 18,
              icon: Icon(Icons.lock_outline),
              onPressed: (){
                print("Security (Change Password)");
                setState(() {
                  profileStateProvider.setSecurity(true);
                });
              },
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 80.0,
          child: Container(
            height: 30.0,
            width: 30.0,
            child: MyArc(
              diameter: 300,
              color: backgroundColor.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          top: -9.0,
          left: 71.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: 18,
              icon: Icon(Icons.settings),
              onPressed: (){
                print("Setting");
                setState(() {
                  profileStateProvider.setSetting(true);
                });
              },
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 40.0,
          child: Container(
            height: 30.0,
            width: 30.0,
            child: MyArc(
              diameter: 300,
              color: backgroundColor.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          top: -9.0,
          left: 31.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: 18,
              icon: Icon(Icons.info_outline),
              onPressed: (){
                print("About Us");
                setState(() {
                  profileStateProvider.setAboutUs(true);
                });
              },
            ),
          ),
        ),
        Positioned(
          top: 40.0,
          left: 0.0,
          child: Transform.rotate(
            angle: 4.71,
            child: Container(
              height: 30.0,
              width: 30.0,
              child: MyArc(
                diameter: 300,
                color: backgroundColor.withOpacity(0.3),
              ),
            ),
          ),
        ),
        Positioned(
          top: 31.0,
          left: -9.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: 18,
              icon: Icon(Icons.contact_phone),
              onPressed: (){
                print("Contact");
                setState(() {
                  profileStateProvider.setContact(true);
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
