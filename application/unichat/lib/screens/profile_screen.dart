import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:unichat/widgets/my_arc.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool onEdit = false;
  bool onChangeBackgroundColor = false;
  bool onChangeFontColor = false;
  bool onPage1 = true;
  bool onPage2 = false;
  bool onPage3 = false;
  bool onPage4 = false;
  bool onPage5 = false;
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;
  Color lastColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/nature-3807667_1920.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
        child: Center(
          child: !onEdit ? Stack(
            children: <Widget>[
              Container(
                width: size.width * 0.85,
                height: size.height * 0.70,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: backgroundColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: size.width * 0.25,
                            width: size.width * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage("assets/images/Michael B Jordan.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.03),
                              Text(
                                "Ali Rn ",
                                style: TextStyle(
                                  color: fontColor,
                                ),
                              ),
                              SizedBox(height:10.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Icon(
                                    Icons.bubble_chart,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  Text(
                                    "22",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),
                                  ),
                                  SizedBox(width: 20.0),
                                  Icon(
                                    Icons.pin_drop,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  Text(
                                    "Tehran",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height:10.0),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.phone,
                                    size: 16.0,
                                    color: fontColor,
                                  ),
                                  SizedBox(width:10.0),
                                  Text(
                                    "09037853055",
                                    style: TextStyle(
                                      color: fontColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.02),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/instagram icon.png",
                            height: 30.0,
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
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/instagram icon.png",
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Al1Rn",
                            style: TextStyle(
                              color: fontColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.02),
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
                              SizedBox(height: size.height * 0.02),
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
                              SizedBox(height: size.height * 0.02),
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
                              SizedBox(height: size.height * 0.02),
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
                              SizedBox(height: size.height * 0.02),
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
                      SizedBox(height: size.height * 0.02),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -0.0,
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
                    icon: Icon(Icons.mode_edit),
                    onPressed: (){
                      setState(() {
                        lastColor = backgroundColor;
                        onEdit = true;
                      });
                      print("EDIT");
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Name: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Username: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Phone Number: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Email: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rn",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "+98 903 785 30 55",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "alirn76@yahoo.com",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
//                  child: !onChangeBackgroundColor && !onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              border: Border.all(
//                                color: Colors.black,
//                                width: 0.1,
//                              ),
//                              borderRadius: BorderRadius.circular(50),
////                                  image: DecorationImage(
////                                    image: AssetImage("assets/images/Michael B Jordan.png"),
////                                    fit: BoxFit.cover,
////                                  ),
//                            ),
//                            child: IconButton(
//                              onPressed: (){
//                                print("add Picture");
//                              },
//                              icon: Icon(Icons.add_photo_alternate),
//                              color: Colors.black.withOpacity(0.7),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      onPage1 ? Padding(
//                        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Row(
//                              children: [
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeFontColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Font Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeBackgroundColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Background Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            FlatButton(
//                              onPressed: (){
//                                print("EDIT NAME");
//                              },
//                              padding: EdgeInsets.all(0.0),
//                              child: Container(
////                                    color: Colors.red,
//                                child: Text(
//                                  "Ali RnAli RnAli RnAli RnnAli RnAli RnAnAli RnAli RnAnAli RnAli RnA",
//                                  maxLines: 1,
//                                  overflow: TextOverflow.ellipsis,
//                                  style: TextStyle(
//                                    fontWeight: FontWeight.w400,
//                                  ),
//                                ),
//                              ),
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: [
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Username",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Instagram",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Telegram",
//                                    ),
//                                  ],
//                                ),
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Inception",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Arrow",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Lose your self",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                  ],
//                                ),
//                              ],
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.end,
//                              children: [
//                                IconButton(
//                                  icon: Icon(Icons.arrow_forward),
//                                  color: Colors.white,
//                                  onPressed: (){
//                                    setState(() {
//                                      onPage1 = false;
//                                      onPage2 = true;
//                                    });
//                                  },
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      )
//                          : onPage2 ? Column(
//                        children: [
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: [
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Favorite Sport?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Movie?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite TV Series?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Music?",
//                                  ),
//                                ],
//                              ),
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Taekwondo",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Inception",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Arrow",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Lose your self",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                ],
//                              ),
//                            ],
//                          ),
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: [
//                              IconButton(
//                                icon: Icon(Icons.arrow_back),
//                                color: Colors.white,
//                                onPressed: (){
//                                  setState(() {
//                                    onPage1 = true;
//                                    onPage2 = false;
//                                  });
//                                },
//                              ),
//                            ],
//                          ),
//                        ],
//                      )
//                          : Text("Third page"),
//                    ],
//                  )
//                      : onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeFontColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: fontColor,
//                          onChanged: (color) => setState(() => fontColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  )
//                      :Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeBackgroundColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: backgroundColor,
//                          onChanged: (color) => setState(() => backgroundColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  ),
                    ),
                    Align(
                      alignment: Alignment(0, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(null),
                          ),
                          Text(
                            "1/5",
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
                            color: fontColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                    : onPage2 ? Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListView(
                        padding: EdgeInsets.all(0.0),
                        children: [
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Name: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Username: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Phone Number: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Email: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rn",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "+98 903 785 30 55",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "alirn76@yahoo.com",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
//                  child: !onChangeBackgroundColor && !onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              border: Border.all(
//                                color: Colors.black,
//                                width: 0.1,
//                              ),
//                              borderRadius: BorderRadius.circular(50),
////                                  image: DecorationImage(
////                                    image: AssetImage("assets/images/Michael B Jordan.png"),
////                                    fit: BoxFit.cover,
////                                  ),
//                            ),
//                            child: IconButton(
//                              onPressed: (){
//                                print("add Picture");
//                              },
//                              icon: Icon(Icons.add_photo_alternate),
//                              color: Colors.black.withOpacity(0.7),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      onPage1 ? Padding(
//                        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Row(
//                              children: [
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeFontColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Font Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeBackgroundColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Background Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            FlatButton(
//                              onPressed: (){
//                                print("EDIT NAME");
//                              },
//                              padding: EdgeInsets.all(0.0),
//                              child: Container(
////                                    color: Colors.red,
//                                child: Text(
//                                  "Ali RnAli RnAli RnAli RnnAli RnAli RnAnAli RnAli RnAnAli RnAli RnA",
//                                  maxLines: 1,
//                                  overflow: TextOverflow.ellipsis,
//                                  style: TextStyle(
//                                    fontWeight: FontWeight.w400,
//                                  ),
//                                ),
//                              ),
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: [
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Username",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Instagram",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Telegram",
//                                    ),
//                                  ],
//                                ),
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Inception",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Arrow",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Lose your self",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                  ],
//                                ),
//                              ],
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.end,
//                              children: [
//                                IconButton(
//                                  icon: Icon(Icons.arrow_forward),
//                                  color: Colors.white,
//                                  onPressed: (){
//                                    setState(() {
//                                      onPage1 = false;
//                                      onPage2 = true;
//                                    });
//                                  },
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      )
//                          : onPage2 ? Column(
//                        children: [
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: [
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Favorite Sport?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Movie?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite TV Series?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Music?",
//                                  ),
//                                ],
//                              ),
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Taekwondo",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Inception",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Arrow",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Lose your self",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                ],
//                              ),
//                            ],
//                          ),
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: [
//                              IconButton(
//                                icon: Icon(Icons.arrow_back),
//                                color: Colors.white,
//                                onPressed: (){
//                                  setState(() {
//                                    onPage1 = true;
//                                    onPage2 = false;
//                                  });
//                                },
//                              ),
//                            ],
//                          ),
//                        ],
//                      )
//                          : Text("Third page"),
//                    ],
//                  )
//                      : onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeFontColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: fontColor,
//                          onChanged: (color) => setState(() => fontColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  )
//                      :Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeBackgroundColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: backgroundColor,
//                          onChanged: (color) => setState(() => backgroundColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  ),
                    ),
                    Align(
                      alignment: Alignment(0, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: fontColor,
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
                            color: fontColor,
                          ),
                        ],
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Name: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Username: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Phone Number: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Email: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rn",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "+98 903 785 30 55",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "alirn76@yahoo.com",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
//                  child: !onChangeBackgroundColor && !onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              border: Border.all(
//                                color: Colors.black,
//                                width: 0.1,
//                              ),
//                              borderRadius: BorderRadius.circular(50),
////                                  image: DecorationImage(
////                                    image: AssetImage("assets/images/Michael B Jordan.png"),
////                                    fit: BoxFit.cover,
////                                  ),
//                            ),
//                            child: IconButton(
//                              onPressed: (){
//                                print("add Picture");
//                              },
//                              icon: Icon(Icons.add_photo_alternate),
//                              color: Colors.black.withOpacity(0.7),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      onPage1 ? Padding(
//                        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Row(
//                              children: [
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeFontColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Font Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeBackgroundColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Background Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            FlatButton(
//                              onPressed: (){
//                                print("EDIT NAME");
//                              },
//                              padding: EdgeInsets.all(0.0),
//                              child: Container(
////                                    color: Colors.red,
//                                child: Text(
//                                  "Ali RnAli RnAli RnAli RnnAli RnAli RnAnAli RnAli RnAnAli RnAli RnA",
//                                  maxLines: 1,
//                                  overflow: TextOverflow.ellipsis,
//                                  style: TextStyle(
//                                    fontWeight: FontWeight.w400,
//                                  ),
//                                ),
//                              ),
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: [
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Username",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Instagram",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Telegram",
//                                    ),
//                                  ],
//                                ),
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Inception",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Arrow",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Lose your self",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                  ],
//                                ),
//                              ],
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.end,
//                              children: [
//                                IconButton(
//                                  icon: Icon(Icons.arrow_forward),
//                                  color: Colors.white,
//                                  onPressed: (){
//                                    setState(() {
//                                      onPage1 = false;
//                                      onPage2 = true;
//                                    });
//                                  },
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      )
//                          : onPage2 ? Column(
//                        children: [
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: [
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Favorite Sport?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Movie?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite TV Series?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Music?",
//                                  ),
//                                ],
//                              ),
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Taekwondo",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Inception",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Arrow",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Lose your self",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                ],
//                              ),
//                            ],
//                          ),
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: [
//                              IconButton(
//                                icon: Icon(Icons.arrow_back),
//                                color: Colors.white,
//                                onPressed: (){
//                                  setState(() {
//                                    onPage1 = true;
//                                    onPage2 = false;
//                                  });
//                                },
//                              ),
//                            ],
//                          ),
//                        ],
//                      )
//                          : Text("Third page"),
//                    ],
//                  )
//                      : onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeFontColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: fontColor,
//                          onChanged: (color) => setState(() => fontColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  )
//                      :Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeBackgroundColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: backgroundColor,
//                          onChanged: (color) => setState(() => backgroundColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  ),
                    ),
                    Align(
                      alignment: Alignment(0, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: fontColor,
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
                            color: fontColor,
                          ),
                        ],
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Name: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Username: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Phone Number: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Email: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rn",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "+98 903 785 30 55",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "alirn76@yahoo.com",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
//                  child: !onChangeBackgroundColor && !onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              border: Border.all(
//                                color: Colors.black,
//                                width: 0.1,
//                              ),
//                              borderRadius: BorderRadius.circular(50),
////                                  image: DecorationImage(
////                                    image: AssetImage("assets/images/Michael B Jordan.png"),
////                                    fit: BoxFit.cover,
////                                  ),
//                            ),
//                            child: IconButton(
//                              onPressed: (){
//                                print("add Picture");
//                              },
//                              icon: Icon(Icons.add_photo_alternate),
//                              color: Colors.black.withOpacity(0.7),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      onPage1 ? Padding(
//                        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Row(
//                              children: [
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeFontColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Font Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeBackgroundColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Background Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            FlatButton(
//                              onPressed: (){
//                                print("EDIT NAME");
//                              },
//                              padding: EdgeInsets.all(0.0),
//                              child: Container(
////                                    color: Colors.red,
//                                child: Text(
//                                  "Ali RnAli RnAli RnAli RnnAli RnAli RnAnAli RnAli RnAnAli RnAli RnA",
//                                  maxLines: 1,
//                                  overflow: TextOverflow.ellipsis,
//                                  style: TextStyle(
//                                    fontWeight: FontWeight.w400,
//                                  ),
//                                ),
//                              ),
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: [
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Username",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Instagram",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Telegram",
//                                    ),
//                                  ],
//                                ),
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Inception",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Arrow",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Lose your self",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                  ],
//                                ),
//                              ],
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.end,
//                              children: [
//                                IconButton(
//                                  icon: Icon(Icons.arrow_forward),
//                                  color: Colors.white,
//                                  onPressed: (){
//                                    setState(() {
//                                      onPage1 = false;
//                                      onPage2 = true;
//                                    });
//                                  },
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      )
//                          : onPage2 ? Column(
//                        children: [
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: [
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Favorite Sport?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Movie?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite TV Series?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Music?",
//                                  ),
//                                ],
//                              ),
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Taekwondo",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Inception",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Arrow",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Lose your self",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                ],
//                              ),
//                            ],
//                          ),
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: [
//                              IconButton(
//                                icon: Icon(Icons.arrow_back),
//                                color: Colors.white,
//                                onPressed: (){
//                                  setState(() {
//                                    onPage1 = true;
//                                    onPage2 = false;
//                                  });
//                                },
//                              ),
//                            ],
//                          ),
//                        ],
//                      )
//                          : Text("Third page"),
//                    ],
//                  )
//                      : onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeFontColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: fontColor,
//                          onChanged: (color) => setState(() => fontColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  )
//                      :Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeBackgroundColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: backgroundColor,
//                          onChanged: (color) => setState(() => backgroundColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  ),
                    ),
                    Align(
                      alignment: Alignment(0, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: fontColor,
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
                            color: fontColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                    : onPage5 ? Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListView(
                        padding: EdgeInsets.all(0.0),
                        children: [
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Name: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Username: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Phone Number: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                      ),
                                      child: Text(
                                        "Email: ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 11.0,
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
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rajab Nezhad Ali Rajab Nezhad Ali Rajab Nezhad",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "Ali Rn",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "+98 903 785 30 55",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                                    ),
                                    child: Text(
                                      "alirn76@yahoo.com",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 11.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
//                  child: !onChangeBackgroundColor && !onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              border: Border.all(
//                                color: Colors.black,
//                                width: 0.1,
//                              ),
//                              borderRadius: BorderRadius.circular(50),
////                                  image: DecorationImage(
////                                    image: AssetImage("assets/images/Michael B Jordan.png"),
////                                    fit: BoxFit.cover,
////                                  ),
//                            ),
//                            child: IconButton(
//                              onPressed: (){
//                                print("add Picture");
//                              },
//                              icon: Icon(Icons.add_photo_alternate),
//                              color: Colors.black.withOpacity(0.7),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      onPage1 ? Padding(
//                        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Row(
//                              children: [
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeFontColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Font Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                FlatButton(
//                                  onPressed: (){
//                                    setState(() => onChangeBackgroundColor = true);
//                                  },
//                                  padding: EdgeInsets.all(0.0),
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(15.0),
//                                  ),
//                                  child: Container(
//                                    padding: EdgeInsets.all(10.0),
//                                    decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(15.0),
//                                      border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                      color: backgroundColor.withOpacity(0.6),
//                                    ),
//                                    child: InvertColors(
//                                      child: Text(
//                                        "Background Color",
//                                        style: TextStyle(
//                                          fontSize: 12.0,
//                                          color: backgroundColor.withOpacity(1.0),
//                                        ),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            FlatButton(
//                              onPressed: (){
//                                print("EDIT NAME");
//                              },
//                              padding: EdgeInsets.all(0.0),
//                              child: Container(
////                                    color: Colors.red,
//                                child: Text(
//                                  "Ali RnAli RnAli RnAli RnnAli RnAli RnAnAli RnAli RnAnAli RnAli RnA",
//                                  maxLines: 1,
//                                  overflow: TextOverflow.ellipsis,
//                                  style: TextStyle(
//                                    fontWeight: FontWeight.w400,
//                                  ),
//                                ),
//                              ),
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: [
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Username",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Instagram",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Telegram",
//                                    ),
//                                  ],
//                                ),
//                                Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [
//                                    Text(
//                                      "Inception",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Arrow",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                    Text(
//                                      "Lose your self",
//                                    ),
//                                    SizedBox(height: size.height * 0.02),
//                                  ],
//                                ),
//                              ],
//                            ),
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.end,
//                              children: [
//                                IconButton(
//                                  icon: Icon(Icons.arrow_forward),
//                                  color: Colors.white,
//                                  onPressed: (){
//                                    setState(() {
//                                      onPage1 = false;
//                                      onPage2 = true;
//                                    });
//                                  },
//                                ),
//                              ],
//                            ),
//                          ],
//                        ),
//                      )
//                          : onPage2 ? Column(
//                        children: [
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
//                            children: [
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Favorite Sport?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Movie?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite TV Series?",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Favorite Music?",
//                                  ),
//                                ],
//                              ),
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [
//                                  Text(
//                                    "Taekwondo",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Inception",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Arrow",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                  Text(
//                                    "Lose your self",
//                                  ),
//                                  SizedBox(height: size.height * 0.02),
//                                ],
//                              ),
//                            ],
//                          ),
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            children: [
//                              IconButton(
//                                icon: Icon(Icons.arrow_back),
//                                color: Colors.white,
//                                onPressed: (){
//                                  setState(() {
//                                    onPage1 = true;
//                                    onPage2 = false;
//                                  });
//                                },
//                              ),
//                            ],
//                          ),
//                        ],
//                      )
//                          : Text("Third page"),
//                    ],
//                  )
//                      : onChangeFontColor ? Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeFontColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: fontColor,
//                          onChanged: (color) => setState(() => fontColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  )
//                      :Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Container(
//                            height: size.width * 0.25,
//                            width: size.width * 0.25,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              image: DecorationImage(
//                                image: AssetImage("assets/images/Michael B Jordan.png"),
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              SizedBox(height: size.height * 0.03),
//                              Text(
//                                "Ali Rn ",
//
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.bubble_chart,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "22",
//                                  ),
//                                  SizedBox(width: 20.0),
//                                  Icon(
//                                    Icons.pin_drop,
//                                    size: 16.0,
//                                  ),
//                                  Text(
//                                    "Tehran",
//                                  ),
//                                ],
//                              ),
//                              SizedBox(height:10.0),
//                              Row(
//                                children: <Widget>[
//                                  Icon(
//                                    Icons.phone,
//                                    size: 16.0,
//                                  ),
//                                  SizedBox(width:10.0),
//                                  Text("09037853055"),
//                                ],
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          InvertColors(
//                            child: IconButton(
//                              icon: Icon(Icons.arrow_back),
//                              color: backgroundColor.withOpacity(1.0),
//                              onPressed: (){
//                                setState(() {
//                                  onChangeBackgroundColor = false;
//                                });
//                              },
//                            ),
//                          ),
//                        ],
//                      ),
//                      Container(
//                        child: CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 15.0,
//                            fontWeight: FontWeight.bold,
//                            color: backgroundColor.withOpacity(1.0),
//                          ),
//                          initialColor: backgroundColor,
//                          onChanged: (color) => setState(() => backgroundColor = color),
//                          size: Size(250, 230),
//                          strokeWidth: 6,
//                          thumbSize: 26,
//                        ),
//                      ),
//                    ],
//                  ),
                    ),
                    Align(
                      alignment: Alignment(0, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: fontColor,
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
                          ),
                          IconButton(
                            icon: Icon(null),
                            color: fontColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                    : Text("There is no more page :)"),
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
                        backgroundColor = lastColor;
                        onEdit = false;
                        onChangeBackgroundColor = false;
                        onChangeFontColor = false;
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
                        onChangeBackgroundColor = false;
                        onChangeFontColor = false;
                      });
                      print("Done");
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
}
