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

class ProfileEditPage2 extends StatefulWidget {
  @override
  _ProfileEditPage2State createState() => _ProfileEditPage2State();
}

class _ProfileEditPage2State extends State<ProfileEditPage2> {
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            SizedBox(height: size.width * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: size.width * 0.08),
                    Transform.rotate(
                      angle: -0.3,
                      origin: Offset(0.0, -15),
                      child: Container(
                        width: size.width * 0.27,
                        height: size.width * 0.15,
                        padding: EdgeInsets.only(top: 5.0, left: 5.0),
                        margin: EdgeInsets.only(bottom: 5.0, top:20),
                        decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: InvertColors(
                          child: Text(
                            "Bio: ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 11.0,
                              color: backgroundColor.withOpacity(1.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.width * 0.08),
                    Transform.rotate(
                      angle: -0.3,
                      child: Container(
                        width: size.width * 0.27,
                        height: size.width * 0.08,
                        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.06,
                              height: size.width * 0.05,
                              child: Image.asset(
                                "assets/images/icons/instagram-icon.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            InvertColors(
                              child: Text(
                                "Instagram: ",
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
                        height: size.width * 0.08,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.06,
                              height: size.width * 0.05,
                              child: Image.asset(
                                "assets/images/icons/telegram-icon.png",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            InvertColors(
                              child: Text(
                                "Telegram: ",
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
                    SizedBox(height: size.width * 0.08),
                    Transform.rotate(
                      angle: -0.3,
                      child: Container(
                        width: size.width * 0.27,
                        height: size.width * 0.08,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: InvertColors(
                          child: Text(
                            "Birth Date: ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 11.0,
                              color: backgroundColor.withOpacity(1.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: -0.3,
                      child: Container(
                        width: size.width * 0.27,
                        height: size.width * 0.08,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: InvertColors(
                          child: Text(
                            "Relationship: ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 11.0,
                              color: backgroundColor.withOpacity(1.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: size.width * 0.45,
                      height: size.width * 0.15,
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      margin: EdgeInsets.only(bottom: 5.0, top:20),
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: backgroundColor.withOpacity(1.0))),
                      ),
                      child: Text(
                        profileDataProvider.user.bio,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: fontColor.withOpacity(1.0),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: size.width * 0.08),
                    Container(
                      width: size.width * 0.45,
                      height: size.width * 0.08,
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                      ),
                      child: Text(
                        profileDataProvider.user.instagram,
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
                      height: size.width * 0.08,
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                      ),
                      child: Text(
                        profileDataProvider.user.telegram,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11.0,
                          color: fontColor.withOpacity(1.0),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: size.width * 0.08),
                    Container(
                      width: size.width * 0.45,
                      height: size.width * 0.08,
                      padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                      ),
                      child: Text(
                        profileDataProvider.user.birth_date.toString(),
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
                      height: size.width * 0.08,
                      padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                      ),
                      child: Text(
                        profileDataProvider.user.relationship.toString(),
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
                    print("Go To Page 1");
                    setState(() {
                      profileStatesProvider.setPage2(false);
                      profileStatesProvider.setPage1(true);
                    });
                  },
                ),
                Text(
                  "2/5",
                  style: TextStyle(
                    color: backgroundColor.withOpacity(1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    print("Go To Page 3");
                    setState(() {
                      profileStatesProvider.setPage2(false);
                      profileStatesProvider.setPage3(true);
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
