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


class ProfileEditPage5 extends StatefulWidget {
  @override
  _ProfileEditPage5State createState() => _ProfileEditPage5State();
}

class _ProfileEditPage5State extends State<ProfileEditPage5> {
  bool onChangeBackgroundColor = true;
  bool onChangeFontColor = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    Color backgroundColor = profileDataProvider.user.background_color;
    Color fontColor = profileDataProvider.user.font_color;

    return Stack(
      children: <Widget>[
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: InvertColors(
                    child: Text(
                      "Change Profile Colors: ",
                      style: TextStyle(
                        color: backgroundColor.withOpacity(1.0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.width * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    onChangeBackgroundColor = true;
                    onChangeFontColor = false;
                  }),
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(10.0),
                      width: size.width * 0.40,
                      decoration: BoxDecoration(
                        color: onChangeBackgroundColor ? backgroundColor.withOpacity(0.8) : null,
                        border: Border.all(
                          color: backgroundColor.withOpacity(1.0),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "Background Color",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: fontColor.withOpacity(1.0),
                        ),
                      )
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    onChangeFontColor = true;
                    onChangeBackgroundColor = false;
                  }),
                  child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(10.0),
                      width: size.width * 0.30,
                      decoration: BoxDecoration(
                        color: onChangeFontColor ? backgroundColor.withOpacity(0.8) : null,
                        border: Border.all(
                          color: backgroundColor.withOpacity(1.0),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "Font Color",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: fontColor.withOpacity(1.0),
                        ),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: size.width * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                onChangeBackgroundColor ?
                CircleColorPicker(
                  textStyle: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: backgroundColor.withOpacity(1.0),
                  ),
                  initialColor: backgroundColor,
                  onChanged: (color) => setState(() => profileDataProvider.setBackgroundColor(color)),
                  size: Size(250, 230),
                  strokeWidth: 6,
                  thumbSize: 26,
                ) :
                CircleColorPicker(
                  textStyle: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: fontColor.withOpacity(1.0),
                  ),
                  initialColor: fontColor,
                  onChanged: (color) => setState(() => profileDataProvider.setFontColor(color)),
                  size: Size(250, 230),
                  strokeWidth: 6,
                  thumbSize: 26,
                ),
              ],
            ),
          ],
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
                    print("Go To Page 4");
                    setState(() {
                      profileStatesProvider.setPage5(false);
                      profileStatesProvider.setPage4(true);
                    });
                  },
                ),
                Text(
                  "5/6",
                  style: TextStyle(
                    color: backgroundColor.withOpacity(1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  color: backgroundColor.withOpacity(1.0),
                  onPressed: (){
                    print("Go To Page 6");
                    setState(() {
                      profileStatesProvider.setPage5(false);
                      profileStatesProvider.setPage6(true);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


//TODO: Color ha tooye Model & Provider asar dade beshan