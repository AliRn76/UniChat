import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  Color customColor = Color(0xa3d1ff);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
///      Color(0xffe2aff3), purple
///      Color(0xffafd1f3), blue
///      Color(0xfff3e2af), yellow
///      Color(0xffdbe1e5), grey
      body: Container(
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.person,
              title: "Private Chat",
              onclick: () {
//                final FancyBottomNavigationState fState = bottomNavigationKey.currentState;
//                fState.setPage(2);
              }),
          TabData(
              iconData: Icons.home,
              title: "Home",
//              onclick: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()))
              ),
          TabData(
              iconData: Icons.group,
              title: "Group Chat"
          ),
        ],
        initialSelection: 1,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    Size size = MediaQuery.of(context).size;

    switch (page) {
      case 0:
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.2,
                    0.7,
                  ],
                  colors: [
                    Color(0xffe2aff3),
                    Color(0xfff9f9f9),
                  ]
              )
          ),
          child: SafeArea(
            child: Text(
              "PV",
            ),
          ),
        );
      case 1:
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
              child: Stack(
                children: <Widget>[
                  Container(
                    width: size.width * 0.85,
                    height: size.height * 0.70,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                        color: customColor.withOpacity(0.3),
//                    color: Color(0x7fffffff),
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
//                      color: Color(0x6fffffff),
                          color: customColor.withOpacity(1.0),
                          width: 1.5,
                        )
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

                                  ),
                                  SizedBox(height:10.0),
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
                                  SizedBox(height:10.0),
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
                          SizedBox(height: size.height * 0.02),
                          Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/instagram icon.png",
                                height: 30.0,
                                fit: BoxFit.cover,
                              ),
                              Text("Ali_Rn_"),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/images/instagram icon.png",
                                height: 30.0,
                                fit: BoxFit.cover,
                              ),
                              Text("Al1Rn"),
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
                                      ),
                                      SizedBox(width: size.width * 0.02),
                                      Text("Football"),
                                    ],
                                  ),
                                  SizedBox(height: size.height * 0.02),
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
                                  SizedBox(height: size.height * 0.02),
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
                                  SizedBox(height: size.height * 0.02),
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
                                  SizedBox(height: size.height * 0.02),
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
                          SizedBox(height: size.height * 0.02),

//                        CircleColorPicker(
//                          textStyle: TextStyle(
//                            fontSize: 17.0,
//                            fontWeight: FontWeight.bold,
//                          ),
//                          initialColor: Colors.blue,
//                          onChanged: (color) => setState(() =>
//                                  custom_color = color),
//                          size: Size(240, 240),
//                          strokeWidth: 4,
//                          thumbSize: 36,
//                        ),
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
                        color: customColor.withOpacity(0.6),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -8.0,
                    right: 16.0,
                    child: Container(
                      decoration: BoxDecoration(
//                        color: custom_color.withOpacity(0.3),
                      ),
                      child: InvertColors(
                        child: IconButton(
                          color: customColor.withOpacity(1.0),
                          iconSize: 20,
                          icon: Icon(Icons.edit),
                          onPressed: (){
                            print("EDIT");
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case 2:
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.2,
                    0.7,
                  ],
                  colors: [
                    Color(0xfff3e2af),
                    Color(0xfff9f9f9),
                  ]
              )
          ),
          child: SafeArea(
            child: Text(
              "Group Chat",
            ),
          ),
        );
    }
  }
}


class MyArc extends StatelessWidget {
  final double diameter;
  final Color color;
  const MyArc({Key key, this.color, this.diameter = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(color),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  final Color color;
  MyPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      3.1415926535897932,
      3.1415926535897932,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

//TODO: baraye tamam text ha overflow tanzim beshe ke az hadeshon bishtar nashan
//TODO: baad az edit , InvertColors baraye hame text ha SET beshe