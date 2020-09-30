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



class ProfileEditPage1 extends StatefulWidget {
  @override
  _ProfileEditPage1State createState() => _ProfileEditPage1State();
}

class _ProfileEditPage1State extends State<ProfileEditPage1> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.width * 0.25,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.1,
                      ),
                      borderRadius: BorderRadius.circular(50),
//                            image: DecorationImage(
//                              image: AssetImage("assets/images/Michael B Jordan.png"),
//                              fit: BoxFit.cover,
//                            ),
                    ),
                    child: IconButton(
                      onPressed: (){
                        print("add Picture");
                      },
                      icon: Icon(Icons.add_photo_alternate),
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.width * 0.05),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(height: size.width * 0.08),
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
                            ),
                          ),
                          child: InvertColors(
                            child: Text(
                              "Name: ",
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
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
                            ),
                          ),
                          child: InvertColors(
                            child: Text(
                              "Username: ",
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
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
                            ),
                          ),
                          child: InvertColors(
                            child: Text(
                              "Phone Number: ",
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
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
                            ),
                          ),
                          child: InvertColors(
                            child: Text(
                              "Email: ",
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
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
                          ),
                        ),
                        child: Text(
                          profileDataProvider.user.first_name + " " + profileDataProvider.user.last_name,
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
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
                          ),
                        ),
                        child: Text(
                          profileDataProvider.user.username,
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
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
                          ),
                        ),
                        child: Text(
                          profileDataProvider.user.phone_number,
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
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
                          ),
                        ),
                        child: Text(
                          profileDataProvider.user.email,
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
                  icon: Icon(null),
                ),
                Text(
                  "1/6",
                  style: TextStyle(
                    color: backgroundColor.withOpacity(1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    print("Go To Page 2");
                    setState(() {
                      profileStatesProvider.setPage1(false);
                      profileStatesProvider.setPage2(true);
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
