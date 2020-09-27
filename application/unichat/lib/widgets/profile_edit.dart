//import 'package:flutter/material.dart';
//
//import 'package:unichat/widgets/my_arc.dart';
//
//class ProfileEdit extends StatefulWidget {
//  @override
//  _ProfileEditState createState() => _ProfileEditState();
//}
//
//class _ProfileEditState extends State<ProfileEdit> {
//  @override
//  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
//
//
//    return Stack(
//      children: <Widget>[
//        Container(
//          width: size.width * 0.85,
//          height: size.height * 0.70,
//          margin: EdgeInsets.only(top: 15),
//          decoration: BoxDecoration(
//            color: backgroundColor.withOpacity(0.3),
////                    color: Color(0x7fffffff),
//            borderRadius: BorderRadius.circular(15.0),
////                        border: Border.all(
////                          color: customColor.withOpacity(0.0),
////                          width: 0.0,
////                        )
//          ),
//          child: Padding(
//            padding: EdgeInsets.all(20.0),
//            child: !onChangeBackgroundColor ? Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    Container(
//                      height: size.width * 0.25,
//                      width: size.width * 0.25,
//                      decoration: BoxDecoration(
//                        border: Border.all(
//                          color: Colors.black,
//                          width: 0.1,
//                        ),
//                        borderRadius: BorderRadius.circular(50),
//
////                                  image: DecorationImage(
////                                    image: AssetImage("assets/images/Michael B Jordan.png"),
////                                    fit: BoxFit.cover,
////                                  ),
//                      ),
//                      child: IconButton(
//                        onPressed: (){
//                          print("add Picture");
//                        },
//                        icon: Icon(Icons.add_photo_alternate),
//                        color: Colors.black.withOpacity(0.7),
//                      ),
//                    ),
//                    Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(height: size.height * 0.03),
//                        Text(
//                          "Ali Rn ",
//                        ),
//                        SizedBox(height:10.0),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Icon(
//                              Icons.bubble_chart,
//                              size: 16.0,
//                            ),
//                            Text(
//                              "22",
//                            ),
//                            SizedBox(width: 20.0),
//                            Icon(
//                              Icons.pin_drop,
//                              size: 16.0,
//                            ),
//                            Text(
//                              "Tehran",
//                            ),
//                          ],
//                        ),
//                        SizedBox(height:10.0),
//                        Row(
//                          children: <Widget>[
//                            Icon(
//                              Icons.phone,
//                              size: 16.0,
//                            ),
//                            SizedBox(width:10.0),
//                            Text("09037853055"),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//                SizedBox(height: size.height * 0.02),
//                onPage1 ? Padding(
//                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                      Row(
//                        children: [
//                          FlatButton(
//                            onPressed: (){
//                              setState(() => onChangeFontColor = true);
//                            },
//                            padding: EdgeInsets.all(0.0),
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(15.0),
//                            ),
//                            child: Container(
//                              padding: EdgeInsets.all(10.0),
//                              decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(15.0),
//                                border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                color: backgroundColor.withOpacity(0.6),
//                              ),
//                              child: InvertColors(
//                                child: Text(
//                                  "Font Color",
//                                  style: TextStyle(
//                                    fontSize: 12.0,
//                                    color: backgroundColor.withOpacity(1.0),
//                                  ),
//                                ),
//                              ),
//                            ),
//                          ),
//                          FlatButton(
//                            onPressed: (){
//                              setState(() => onChangeBackgroundColor = true);
//                            },
//                            padding: EdgeInsets.all(0.0),
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(15.0),
//                            ),
//                            child: Container(
//                              padding: EdgeInsets.all(10.0),
//                              decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(15.0),
//                                border: Border.all(color: backgroundColor.withOpacity(1.0)),
//                                color: backgroundColor.withOpacity(0.6),
//                              ),
//                              child: InvertColors(
//                                child: Text(
//                                  "Background Color",
//                                  style: TextStyle(
//                                    fontSize: 12.0,
//                                    color: backgroundColor.withOpacity(1.0),
//                                  ),
//                                ),
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: size.height * 0.02),
//                      FlatButton(
//                        onPressed: (){
//                          print("EDIT NAME");
//                        },
//                        padding: EdgeInsets.all(0.0),
//                        child: Container(
////                                    color: Colors.red,
//                          child: Text(
//                            "Ali RnAli RnAli RnAli RnnAli RnAli RnAnAli RnAli RnAnAli RnAli RnA",
//                            maxLines: 1,
//                            overflow: TextOverflow.ellipsis,
//                            style: TextStyle(
//                              fontWeight: FontWeight.w400,
//                            ),
//                          ),
//                        ),
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Text(
//                                "Username",
//                              ),
//                              SizedBox(height: size.height * 0.02),
//                              Text(
//                                "Instagram",
//                              ),
//                              SizedBox(height: size.height * 0.02),
//                              Text(
//                                "Telegram",
//                              ),
//                            ],
//                          ),
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Text(
//                                "Inception",
//                              ),
//                              SizedBox(height: size.height * 0.02),
//                              Text(
//                                "Arrow",
//                              ),
//                              SizedBox(height: size.height * 0.02),
//                              Text(
//                                "Lose your self",
//                              ),
//                              SizedBox(height: size.height * 0.02),
//                            ],
//                          ),
//                        ],
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.end,
//                        children: [
//                          IconButton(
//                            icon: Icon(Icons.arrow_forward),
//                            color: Colors.white,
//                            onPressed: (){
//                              setState(() {
//                                onPage1 = false;
//                                onPage2 = true;
//                              });
//                            },
//                          ),
//                        ],
//                      ),
//                    ],
//                  ),
//                )
//                    : onPage2 ? Column(
//                  children: [
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: [
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text(
//                              "Favorite Sport?",
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            Text(
//                              "Favorite Movie?",
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            Text(
//                              "Favorite TV Series?",
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            Text(
//                              "Favorite Music?",
//                            ),
//                          ],
//                        ),
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text(
//                              "Taekwondo",
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            Text(
//                              "Inception",
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            Text(
//                              "Arrow",
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                            Text(
//                              "Lose your self",
//                            ),
//                            SizedBox(height: size.height * 0.02),
//                          ],
//                        ),
//                      ],
//                    ),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      children: [
//                        IconButton(
//                          icon: Icon(Icons.arrow_back),
//                          color: Colors.white,
//                          onPressed: (){
//                            setState(() {
//                              onPage1 = true;
//                              onPage2 = false;
//                            });
//                          },
//                        ),
//                      ],
//                    ),
//                  ],
//                )
//                    : Text("Third page"),
//              ],
//            )
//                : Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    Container(
//                      height: size.width * 0.25,
//                      width: size.width * 0.25,
//                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(50),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/Michael B Jordan.png"),
//                          fit: BoxFit.cover,
//                        ),
//                      ),
//                    ),
//                    Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        SizedBox(height: size.height * 0.03),
//                        Text(
//                          "Ali Rn ",
//
//                        ),
//                        SizedBox(height:10.0),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Icon(
//                              Icons.bubble_chart,
//                              size: 16.0,
//                            ),
//                            Text(
//                              "22",
//                            ),
//                            SizedBox(width: 20.0),
//                            Icon(
//                              Icons.pin_drop,
//                              size: 16.0,
//                            ),
//                            Text(
//                              "Tehran",
//                            ),
//                          ],
//                        ),
//                        SizedBox(height:10.0),
//                        Row(
//                          children: <Widget>[
//                            Icon(
//                              Icons.phone,
//                              size: 16.0,
//                            ),
//                            SizedBox(width:10.0),
//                            Text("09037853055"),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//                SizedBox(height: size.height * 0.02),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  children: [
//                    InvertColors(
//                      child: IconButton(
//                        icon: Icon(Icons.arrow_back),
//                        color: backgroundColor.withOpacity(1.0),
//                        onPressed: (){
//                          setState(() {
//                            onChangeBackgroundColor = false;
//                          });
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//                Container(
////                            color: Colors.red,
//                  child: CircleColorPicker(
//                    textStyle: TextStyle(
//                      fontSize: 15.0,
//                      fontWeight: FontWeight.bold,
//                      color: backgroundColor.withOpacity(1.0),
//                    ),
//                    initialColor: backgroundColor,
//                    onChanged: (color) => setState(() => backgroundColor = color),
//                    size: Size(250, 230),
//                    strokeWidth: 6,
//                    thumbSize: 26,
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//        Positioned(
//          top: 0.0,
//          right: 64.0,
//          child: Container(
//            height: 30.0,
//            width: 30.0,
//            child: MyArc(
//              diameter: 300,
//              color: backgroundColor.withOpacity(0.3),
//            ),
//          ),
//        ),
//        Positioned(
//          top: -8.0,
//          right: 56.0,
//          child: InvertColors(
//            child: IconButton(
//              color: backgroundColor.withOpacity(1.0),
//              iconSize: 20,
//              icon: Icon(Icons.close),
//              onPressed: (){
//                setState(() {
//                  backgroundColor = lastColor;
//                  onEdit = false;
//                  onChangeBackgroundColor = false;
//                });
//                print("Cancel");
//              },
//            ),
//          ),
//        ),
//        Positioned(
//          top: 0.0,
//          right: 24.0,
//          child: Container(
//            height: 30.0,
//            width: 30.0,
//            child: MyArc(
//              diameter: 300,
//              color: backgroundColor.withOpacity(0.3),
//            ),
//          ),
//        ),
//        Positioned(
//          top: -8.0,
//          right: 16.0,
//          child: InvertColors(
//            child: IconButton(
//              color: backgroundColor.withOpacity(1.0),
//              iconSize: 20,
//
//              icon: Icon(Icons.check),
//              onPressed: (){
//                setState(() {
//                  onEdit = false;
//                  onChangeBackgroundColor = false;
//                });
//                print("Done");
//              },
//            ),
//          ),
//        ),
//      ],
//    );
//  }
//}
