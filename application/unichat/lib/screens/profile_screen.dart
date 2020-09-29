import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:unichat/widgets/my_arc.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool onEdit = false;
  bool onSecurity = false;
  bool onSetting = false;
  bool onAboutUs = false;
  bool onContact = false;
  bool onChangeBackgroundColor = true;
  bool onChangeFontColor = false;
  bool onPage1 = true;
  bool onPage2 = false;
  bool onPage3 = false;
  bool onPage4 = false;
  bool onPage5 = false;
  bool onPage6 = false;
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;
  Color lastBackgroundColor;
  Color lastFontColor;

  Country _selectedCupertinoCountry = CountryPickerUtils.getCountryByIsoCode('IR');
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/nature-background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
        child: Center(
          child: onEdit ? Stack(
            children: <Widget>[
              Container(
                width: size.width * 0.85,
                height: size.height * 0.70,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: backgroundColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: onPage1 ? Stack(
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
//                                  image: DecorationImage(
//                                    image: AssetImage("assets/images/Michael B Jordan.png"),
//                                    fit: BoxFit.cover,
//                                  ),
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
                                      "Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad",
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
                                      "Ali Rn",
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
                                      "+98 903 785 30 55",
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
                                      "alirn76@yahoo.com",
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
                              "1/5",
                              style: TextStyle(
                                color: backgroundColor.withOpacity(1.0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                print("Go To Page 2");
                                setState(() {
                                  onPage1 = false;
                                  onPage2 = true;
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
                )
                    : onPage2 ? Stack(
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
                                    "Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad",
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
                                    "Ali_Rn_",
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
                                    "Al1Rn",
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
                                    "1997/12/25",
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
                                    "Single",
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
                                  onPage2 = false;
                                  onPage1 = true;
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
                                  onPage2 = false;
                                  onPage3 = true;
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
                )
                    : onPage3 ? Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListView(
                        padding: EdgeInsets.all(0.0),
                        children: [
                          SizedBox(height: size.width * 0.1),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: size.width * 0.18),
                                  Transform.rotate(
                                    angle: -0.3,
                                    child: Container(
                                      width: size.width * 0.27,
                                      height: size.width * 0.06,
                                      padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                                      margin: EdgeInsets.only(bottom: 20),
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: InvertColors(
                                        child: Text(
                                          "Country: ",
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
                                      height: size.width * 0.06,
                                      margin: EdgeInsets.only(bottom: 20),
                                      padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: InvertColors(
                                        child: Text(
                                          "City: ",
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
                                      height: size.width * 0.06,
                                      margin: EdgeInsets.only(bottom: 20),
                                      padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: InvertColors(
                                        child: Text(
                                          "University: ",
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
                                      height: size.width * 0.06,
                                      margin: EdgeInsets.only(bottom: 20),
                                      padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: InvertColors(
                                        child: Text(
                                          "Field Of Study: ",
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
                                      height: size.width * 0.06,
                                      margin: EdgeInsets.only(bottom: 20),
                                      padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: InvertColors(
                                        child: Text(
                                          "Entrance Year: ",
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
                                    height: size.width * 0.16,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0,),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: FlatButton(
                                      padding: EdgeInsets.all(0.0),
                                      child: _buildCupertinoSelectedItem(_selectedCupertinoCountry),
                                      onPressed: _openCupertinoCountryPicker,
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    height: size.width * 0.06,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Tehran",
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
                                    height: size.width * 0.06,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Azad TNB",
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
                                    height: size.width * 0.06,
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "IT",
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
                                    height: size.width * 0.06,
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "1395 / 2016",
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
                                print("Go To Page 2");
                                setState(() {
                                  onPage3 = false;
                                  onPage2 = true;
                                });
                              },
                            ),
                            Text(
                              "3/5",
                              style: TextStyle(
                                color: backgroundColor.withOpacity(1.0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                print("Go To Page 4");
                                setState(() {
                                  onPage3 = false;
                                  onPage4 = true;
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
                )
                    : onPage4 ? Stack(
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
                                      "Taekwondo",
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
                                      "",
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
                                      "Hunger games",
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
                                      "The Flash",
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
                                      "Little Sister - Jean Philippe",
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
                                      "",
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
                                      "Silicon Valey",
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
                                  onPage4 = false;
                                  onPage3 = true;
                                });
                              },
                            ),
                            Text(
                              "4/5",
                              style: TextStyle(
                                color: backgroundColor.withOpacity(1.0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                print("Go To Page 5");
                                setState(() {
                                  onPage4 = false;
                                  onPage5 = true;
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
                )
                    : onPage5 ? Stack(
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
                            onChangeBackgroundColor
                                ? CircleColorPicker(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: backgroundColor.withOpacity(1.0),
                              ),
                              initialColor: backgroundColor,
                              onChanged: (color) => setState(() => backgroundColor = color),
                              size: Size(250, 230),
                              strokeWidth: 6,
                              thumbSize: 26,
                            )
                                : CircleColorPicker(
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: fontColor.withOpacity(1.0),
                              ),
                              initialColor: fontColor,
                              onChanged: (color) => setState(() => fontColor = color),
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
                                  onPage5 = false;
                                  onPage4 = true;
                                });
                              },
                            ),
                            Text(
                              "5/5",
                              style: TextStyle(
                                color: backgroundColor.withOpacity(1.0),
                              ),
                            ),
                            IconButton(
                              icon: Icon(null),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
                    : null,
              ),
              Positioned(
                top: 0.0,
                right: 64.0,
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
                top: -8.0,
                right: 56.0,
                child: InvertColors(
                  child: IconButton(
                    color: backgroundColor.withOpacity(1.0),
                    iconSize: 20,
                    icon: Icon(Icons.close),
                    onPressed: (){
                      setState(() {
                        backgroundColor = lastBackgroundColor;
                        fontColor = lastFontColor;
                        onEdit = false;
                        onPage1 = true;
                        onPage2 = false;
                        onPage3 = false;
                        onPage4 = false;
                        onPage5 = false;
                      });
                      print("Cancel");
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 24.0,
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
                top: -8.0,
                right: 16.0,
                child: InvertColors(
                  child: IconButton(
                    color: backgroundColor.withOpacity(1.0),
                    iconSize: 20,

                    icon: Icon(Icons.check),
                    onPressed: (){
                      setState(() {
                        onEdit = false;
                        onEdit = false;
                        onPage1 = true;
                        onPage2 = false;
                        onPage3 = false;
                        onPage4 = false;
                        onPage5 = false;
                      });
                      print("Done");
                    },
                  ),
                ),
              ),
            ],
          )
              : onSecurity ? Stack(
              children: [
                Container(
                  width: size.width * 0.85,
                  height: size.height * 0.70,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: backgroundColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                    child: Center(
                      child: Text(
                          "On Security",
                      ),
                    ),
                ),
                Positioned(
                  top: 0.0,
                  right: 64.0,
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
                  top: -8.0,
                  right: 56.0,
                  child: InvertColors(
                    child: IconButton(
                      color: backgroundColor.withOpacity(1.0),
                      iconSize: 20,
                      icon: Icon(Icons.close),
                      onPressed: (){
                        setState(() {
                          onSecurity = false;
                        });
                        print("Cancel");
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  right: 24.0,
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
                  top: -8.0,
                  right: 16.0,
                  child: InvertColors(
                    child: IconButton(
                      color: backgroundColor.withOpacity(1.0),
                      iconSize: 20,

                      icon: Icon(Icons.check),
                      onPressed: (){
                        setState(() {
                          onSecurity = false;
                        });
                        print("Done");
                      },
                    ),
                  ),
                ),
              ],
          )
              : onSetting ? Stack(
            children: [
              Container(
                width: size.width * 0.85,
                height: size.height * 0.70,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: backgroundColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    "On Setting",
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 64.0,
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
                top: -8.0,
                right: 56.0,
                child: InvertColors(
                  child: IconButton(
                    color: backgroundColor.withOpacity(1.0),
                    iconSize: 20,
                    icon: Icon(Icons.close),
                    onPressed: (){
                      setState(() {
                        onSetting = false;
                      });
                      print("Cancel");
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 24.0,
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
                top: -8.0,
                right: 16.0,
                child: InvertColors(
                  child: IconButton(
                    color: backgroundColor.withOpacity(1.0),
                    iconSize: 20,

                    icon: Icon(Icons.check),
                    onPressed: (){
                      setState(() {
                        onSetting = false;
                      });
                      print("Done");
                    },
                  ),
                ),
              ),
            ],
          )
              : onAboutUs ? Stack(
            children: [
              Container(
                width: size.width * 0.85,
                height: size.height * 0.70,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: backgroundColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    "On About Us",
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 64.0,
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
                top: -8.0,
                right: 56.0,
                child: InvertColors(
                  child: IconButton(
                    color: backgroundColor.withOpacity(1.0),
                    iconSize: 20,
                    icon: Icon(Icons.close),
                    onPressed: (){
                      setState(() {
                        onAboutUs = false;
                      });
                      print("Cancel");
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 24.0,
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
                top: -8.0,
                right: 16.0,
                child: InvertColors(
                  child: IconButton(
                    color: backgroundColor.withOpacity(1.0),
                    iconSize: 20,

                    icon: Icon(Icons.check),
                    onPressed: (){
                      setState(() {
                        onAboutUs = false;
                      });
                      print("Done");
                    },
                  ),
                ),
              ),
            ],
          )
              : onContact ? Stack(
            children: [
              Container(
                width: size.width * 0.85,
                height: size.height * 0.70,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: backgroundColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    "On Contact",
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 64.0,
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
                top: -8.0,
                right: 56.0,
                child: InvertColors(
                  child: IconButton(
                    color: backgroundColor.withOpacity(1.0),
                    iconSize: 20,
                    icon: Icon(Icons.close),
                    onPressed: (){
                      setState(() {
                        onContact = false;
                      });
                      print("Cancel");
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 24.0,
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
                top: -8.0,
                right: 16.0,
                child: InvertColors(
                  child: IconButton(
                    color: backgroundColor.withOpacity(1.0),
                    iconSize: 20,
                    icon: Icon(Icons.check),
                    onPressed: (){
                      setState(() {
                        onContact = false;
                      });
                      print("Done");
                    },
                  ),
                ),
              ),
            ],
          )
              : Stack(
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
                        onEdit = true;
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
                        onSecurity = true;
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
                        onSetting = true;
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
                        onAboutUs = true;
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
                        onContact = true;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }




  void _openCupertinoCountryPicker() => showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerCupertino(
          backgroundColor: Colors.black.withOpacity(0.6),
          itemBuilder: _buildCupertinoItem,
          pickerSheetHeight: 300.0,
          pickerItemHeight: 75,
          useMagnifier: true,
          initialCountry: _selectedCupertinoCountry,
          onValuePicked: (Country country) =>
              setState(() => _selectedCupertinoCountry = country),
//          priorityList: [
//            CountryPickerUtils.getCountryByIsoCode('IR'),
//          ],
        );
      });

  Widget _buildCupertinoSelectedItem(Country country) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(width: size.width * 0.01),
        Flexible(
          child: Text(
            country.name,
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
    );
  }

  Widget _buildCupertinoItem(Country country) {
    Size size = MediaQuery.of(context).size;
    return DefaultTextStyle(
      style: TextStyle(
        color: CupertinoColors.white,
        fontSize: 16.0,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: size.width * 0.01),
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(width: size.width * 0.01),
          Flexible(child: Text(country.name))
        ],
      ),
    );
  }
}


//TODO: age esme ahang o ina toolani bood ye fekri barash bokonm
//TODO: in ke cheghadr bg Image Blur beshe ro az karbar bgiram
//TODO: bg e harkas ro az khodesh begiram