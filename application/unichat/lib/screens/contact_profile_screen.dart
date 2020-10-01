import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:invert_colors/invert_colors.dart';
import 'package:unichat/screens/chat_screen.dart';

class ContactProfile extends StatefulWidget {
  @override
  _ContactProfileState createState() => _ContactProfileState();
}

class _ContactProfileState extends State<ContactProfile> {
  Color customColor = Color(0xA3D1FF);
  Color lastColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/nature-background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
          child: Stack(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: size.width * 0.85,
                      height: size.height * 0.70,
//                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: customColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: customColor.withOpacity(1.0),
                            width: 1.0,
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: ListView(
                          padding: EdgeInsets.only(top: 5),
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
                                    Container(
                                      width: size.width * 0.40,
                                      child: Text(
                                        "Ali Rn ",
                                      ),
                                    ),
                                    SizedBox(height: size.width * 0.03),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Icon(
                                          Icons.bubble_chart,
                                          size: 16.0,
                                        ),
                                        Text(
                                          "22",
                                        ),
                                        SizedBox(width: 20.0),
                                        Icon(
                                          Icons.pin_drop,
                                          size: 16.0,
                                        ),
                                        Text(
                                          "Tehran",
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: size.width * 0.03),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.phone,
                                          size: 16.0,
                                        ),
                                        SizedBox(width:10.0),
                                        Text("09037853055"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.width * 0.05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    print("Watch Media");
                                  },
                                  child: Container(
                                    width: size.width * 0.25,
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: customColor.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: customColor.withOpacity(1.0),
                                        width: 1.0
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          "Media"
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder:  (context) => ChatScreen()),
                                    );
                                  },
                                  child: Container(
                                    width: size.width * 0.27,
//                                    width: size.width * 0.45,
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: customColor.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                          color: customColor.withOpacity(1.0),
                                          width: 1.0
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                          "Message"
                                      ),
                                    ),
                                  ),

                                ),
                                Container(
                                  width: size.width * 0.15,
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: customColor.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: customColor.withOpacity(1.0),
                                        width: 1.0
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                        "Call"
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.width * 0.03),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/icons/instagram-icon.png",
                                  height: 30.0,
                                  fit: BoxFit.cover,
                                ),
                                Text("Ali_Rn_"),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/icons/instagram-icon.png",
                                  height: 30.0,
                                  fit: BoxFit.cover,
                                ),
                                Text("Al1Rn"),
                              ],
                            ),
                            SizedBox(height: size.width * 0.03),
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
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        Text("Football"),
                                      ],
                                    ),
                                    SizedBox(height: size.width * 0.03),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.videogame_asset,
                                          size: 16.0,
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        Text("Game"),
                                      ],
                                    ),
                                    SizedBox(height: size.width * 0.03),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.tv,
                                          size: 16.0,
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        Text("TV Series"),
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
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        Text("Book"),
                                      ],
                                    ),
                                    SizedBox(height: size.width * 0.03),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.movie,
                                          size: 16.0,
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        Text("Movie"),
                                      ],
                                    ),
                                    SizedBox(height: size.width * 0.03),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.airplanemode_active,
                                          size: 16.0,
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        Text("Wants to travel"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.width * 0.05),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -5.0,
                      right: -5.0,
                      child: IconButton(
                        color: customColor.withOpacity(1.0),
                        iconSize: 20,
                        icon: Icon(Icons.settings),
                        onPressed: (){
                          print("Profile More Option");
                        },
                      ),
                    ),
                    Positioned(
                      top: -5.0,
                      left: -5.0,
                      child: IconButton(
                        color: customColor.withOpacity(1.0),
                        iconSize: 20,
                        icon: Icon(Icons.arrow_back),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}


//TODO: color & image, bayad dynamic baraye khode shakhs bashe
//TODO: MaterialPageRoute e ChatScreen ro mishe Slide i kardesh
