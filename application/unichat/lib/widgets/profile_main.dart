import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/screens/first_screen.dart';
import 'package:unichat/widgets/myArc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unichat/widgets/profile_main_bio.dart';
import 'package:unichat/widgets/profile_main_favorites.dart';
import 'package:unichat/widgets/profile_main_information.dart';
import 'package:unichat/widgets/profile_main_socialmedia.dart';

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

    Color backgroundColor = profileDataProvider.userProfile.background_color;
    Color fontColor = profileDataProvider.userProfile.font_color;
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
            padding: EdgeInsets.fromLTRB(
                size.width * 0.05, size.width * 0.10,
                size.width * 0.05, size.width * 0.05
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container (
                      height: size.width * 0.25,
                      width: size.width * 0.25,
                      margin: EdgeInsets.only(right: size.width * 0.03),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Michael B Jordan.png"),
//                          image: NetworkImage(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ProfileMainInformation(),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: size.width * 0.06),
                  padding: EdgeInsets.only(bottom: size.width * 0.02),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: backgroundColor.withOpacity(1.0))
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        profileDataProvider.getUsername(),
                        style: TextStyle(
                          color: fontColor.withOpacity(1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  /// width: size.width * 0.73,
                  child: ListView(
                    padding: EdgeInsets.all(0.0),
                    children: [
                      ProfileMainBio(),
                      SizedBox(height: size.width * 0.04),
                      ProfileMainSocialMedia(),

                      SizedBox(height: size.width * 0.06),

                      ProfileMainFavorites(),
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
                      MaterialPageRoute(builder: (context) => FirstScreen())
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
//TODO: icon telegram o instagram size eshon hamahang beshe
