import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/widgets/myArc.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileAboutUs extends StatefulWidget {
  @override
  _ProfileAboutUsState createState() => _ProfileAboutUsState();
}

class _ProfileAboutUsState extends State<ProfileAboutUs> {
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStateProvider = Provider.of<ProfileStatesProvider>(context);

    return Stack(
      children: [
        Container(
          width: size.width * 0.85,
          height: size.height * 0.70,
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
//                    width: 8.0,
//                    height: size.height * 0.6,
//                      color: Colors.red,
                  ),
//                  SizedBox(width: size.width * 0.12),
                  Container(
//                    width: size.width * 0.7,
//                    height: size.height * 0.6,
                    child: Align(
                      alignment: Alignment(-0.4,0),
                      child: Text(
                        "There is no us \n             It's me  :)",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "Milton",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
//                    width: 8.0,
//                    height: size.height * 0.11,
//                    color: Theme.of(context).accentColor,
                  ),
//                  SizedBox(width: size.width * 0.8),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Container(
//                      width: size.width * 0.2,
//                      height: size.height * 0.11,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hi !   I'm Ali",
                            style: TextStyle(
                              fontFamily: "Milton",
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
//                    width: 8.0,
//                    height: height()/4,
                    color: Colors.greenAccent[200],
                  ),
//                  SizedBox(width: width()/8),
                  Container(
//                    width: width() - width()/8 - 8,
//                    height: height()/4,
                    child: Align(
                      alignment: Alignment(-1.0, 0.0),
                      child: Text(
                        "I work with:\n\n"
                            "    1.   Flutter in Client-Side\n"
                            "    2.   Django in Server-Side",
                        style: TextStyle(
                          fontFamily: "Milton",
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
//                    width: 8.0,
//                    height: height()/6,
                    color: Colors.blue,
                  ),
//                  SizedBox(width: width()/8),
                  Container(
//                    width: width() - width()/8 - 8,
//                    height: height()/6,
                    child: Align(
                      alignment: Alignment(-1, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
//                    SizedBox(width: width()/16),
                          Text(
                            "Donate Me  ",
                            style: TextStyle(
                              fontFamily: "Milton",
                              fontSize: 20.0,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 22.0,
                          ),
                          SizedBox(width: 10.0),
                          Center(
                            child: ClayContainer(
//                              color: Theme.of(context).scaffoldBackgroundColor,
                              height: 85,
                              width: 85,
                              borderRadius: 200,
                              curveType: CurveType.convex,
//                              spread: 10,
//                              depth: calculatedFirstDepth.toInt(),
                              child: Center(
//                                child: ClayContainer(
//                                  height: 75,
//                                  width: 75,
//                                  borderRadius: 200,
////                                  depth: calculatedSecondDepth.toInt(),
//                                  curveType: CurveType.convex,
//                                  color: Theme.of(context).scaffoldBackgroundColor,
//                                  child: Center(
//                                    child: ClayContainer(
//                                        height: 60,
//                                        width: 60,
//                                        borderRadius: 200,
//                                        color: Theme.of(context).scaffoldBackgroundColor,
////                                        depth: calculatedThirdDepth.toInt(),
//                                        curveType: CurveType.concave,
//                                        child: Center(
//                                            child: ClayContainer(
//                                              height: 50,
//                                              width: 50,
//                                              borderRadius: 200,
//                                              color: Theme.of(context).scaffoldBackgroundColor,
////                                              depth: calculatedFourthDepth.toInt(),
//                                              curveType: CurveType.convex,
//                                              child: IconButton(
//                                                icon: FaIcon(FontAwesomeIcons.handHoldingUsd),
////                                                onPressed: () => launch('https://idpay.ir/alirn'),
//                                                color: Colors.blue[600],
//                                                splashColor: Colors.blue,
//                                                hoverColor: Colors.blue,
//                                              ),
//                                            )
//                                        )
//                                    ),
//                                  ),
//                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 8.0,
//                    height: height()/7,
//                color: Colors.blue,
                  ),
//                  SizedBox(width: width()/8),
                  Container(
//                    width: width() - width()/8 - 8,
//                    height: height()/7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
//                            SizedBox(width: width()/10),
                            FaIcon(
                              FontAwesomeIcons.github,
                              size: 25.0,
                            ),
                            RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '     Github.com/AliRn76',
                                      style: TextStyle(color: Colors.blue),
//                                      recognizer: TapGestureRecognizer()
//                                        ..onTap = () { launch('https://github.com/AliRn76');
//                                        },
                                    ),
                                  ]
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
//                            SizedBox(width: width()/10),
                            FaIcon(
                              FontAwesomeIcons.userAlt,
                              size: 25.0,
                            ),
                            RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '     Contact Me',
                                      style: TextStyle(color: Colors.blue),
//                                      recognizer: TapGestureRecognizer()
//                                        ..onTap = () { launch('http://Alirn.ir');
//                                        },
                                    ),
                                  ]
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
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

              icon: Icon(Icons.home),
              onPressed: (){
                setState(() {
                  profileStateProvider.setAboutUs(false);
                });
                print("Home");
              },
            ),
          ),
        ),
      ],
    );
  }
}
