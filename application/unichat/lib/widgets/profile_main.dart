import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/screens/register_screen.dart';
import 'package:unichat/widgets/myArc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileMain extends StatefulWidget {
  @override
  _ProfileMainState createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider statesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    Color backgroundColor = profileDataProvider.user.background_color;
    Color fontColor = profileDataProvider.user.font_color;
    double iconSize = 19.0;

    return Stack(
      children: <Widget>[
        Container(
          width: size.width * 0.85,
          height: size.height * 0.70,
          margin: EdgeInsets.fromLTRB(22.0, 22.0, 22.0, 0.0),
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
                                      color: fontColor.withOpacity(1.0),
                                    ),
                                  ),
                                  SizedBox(width: size.width * 0.04),
                                  Icon(
                                    Icons.pin_drop,
                                    size: 16.0,
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  Container(
                                    width: size.width * 0.25,
                                    child: Text(
                                      "Tehran ",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: fontColor.withOpacity(1.0),
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
                                  color: fontColor.withOpacity(1.0),
                                ),
                                SizedBox(width:size.width * 0.01),
                                Container(
                                  width: size.width * 0.35,
                                  child: Text(
                                    "0903785305509",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
//                          Image.asset(
//                            "",
//                            width: size.width * 0.08,
//                            height: size.width * 0.08,
//                            fit: BoxFit.cover,
//                          ),
                          Text(
                            "Admin",
                            style: TextStyle(
                              color: fontColor.withOpacity(1.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/icons/instagram-icon.png",
                                  width: size.width * 0.08,
                                  height: size.width * 0.08,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  width: size.width * 0.27,
                                  height: size.width * 0.08,
                                  child: Text(
                                    "Ali_Rn_asdasdfasdf",
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left:3.0),
                                  child: Image.asset(
                                    "assets/images/icons/telegram-icon.png",
                                    width: size.width * 0.08,
                                    height: size.width * 0.06,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.27,
                                  height: size.width * 0.06,
                                  child: Text(
                                    " Al1RA l1RA l1RAl1 RAl1RAl 1RAl1R",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: size.width * 0.02),

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
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Taekwondo",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.videogame_asset,
                                    size: 16.0,
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "War Thunder",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.tv,
                                    size: 16.0,
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "The Flash",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.music_note,
                                    size: 16.0,
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Color",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
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
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Hunger Games",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.movie,
                                    size: 16.0,
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Warrior",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.airplanemode_active,
                                    size: 16.0,
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Paris",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
                                    ),),
                                ],
                              ),
                              SizedBox(height: size.width * 0.04),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.work,
                                    size: 16.0,
                                    color: fontColor.withOpacity(1.0),
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  Text(
                                    "Programmer",
                                    style: TextStyle(
                                      color: fontColor.withOpacity(1.0),
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
        _optionBackground(2.0, 35.0, null, false, false, backgroundColor, fontColor),
        Positioned(
          top: -5.0,
          right: 30.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: iconSize,
              icon: Icon(Icons.mode_edit),
              onPressed: (){
                setState(() {
                  statesProvider.lastBackgroundColor = backgroundColor;
                  statesProvider.lastFontColor = fontColor;
                  statesProvider.setEdit(true);
                });
                print("EDIT");
              },
            ),
          ),
        ),
        _optionBackground(2.0, 80.0, null, false, false, backgroundColor, fontColor),
        Positioned(
          top: -5.0,
          right: 75.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: iconSize,
              icon: Icon(Icons.lock_outline),
              onPressed: (){
                print("Security (Change Password)");
                setState(() {
                  statesProvider.setSecurity(true);
                });
              },
            ),
          ),
        ),

        _optionBackground(2.0, null, 35.0, false, false, backgroundColor, fontColor),
        Positioned(
          top: -5.0,
          left: 32.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: iconSize,
              icon: Icon(Icons.info_outline),
              onPressed: (){
                print("About Us");
                setState(() {
                  statesProvider.setAboutUs(true);
                });
              },
            ),
          ),
        ),
        _optionBackground(2.0, null, 80.0, false, false, backgroundColor, fontColor),
        Positioned(
          top: -5.0,
          left: 77.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: iconSize,
              icon: Icon(Icons.settings),
              onPressed: (){
                print("Setting");
                setState(() {
                  statesProvider.setSetting(true);
                });
              },
            ),
          ),
        ),

        _optionBackground(40.0, null, 3.0, true, false, backgroundColor, fontColor),
        Positioned(
          top: 35.0,
          left: -4.0,
          child: InvertColors(
            child: Transform.rotate(
              angle: 3.1415,
              child: IconButton(
                color: backgroundColor.withOpacity(1.0),
                iconSize: iconSize,
                icon: FaIcon(FontAwesomeIcons.signOutAlt),
                onPressed: (){
                  print("Exit");
                  setState(() {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => SignupScreen())
                    );
                  });
                },
              ),
            ),
          ),
        ),
        _optionBackground(40.0, 3.0, null, false, true, backgroundColor, fontColor),
        Positioned(
          top: 38.0,
          right: -4.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: iconSize,
              icon: Icon(Icons.contact_phone),
              onPressed: (){
                print("Contact");
                setState(() {
                  statesProvider.setContact(true);
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _optionBackground(top, right, left, inLeft, inRight, backgroundColor, fontColor){
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


//TODO: vaghti mizane roo neveshte ha , baz beshan o oon dastana ke too zehname

