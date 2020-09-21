import 'package:flutter/material.dart';


class PvScreen extends StatefulWidget {
  @override
  _PvScreenState createState() => _PvScreenState();
}

class _PvScreenState extends State<PvScreen> {
  TextEditingController searchController = TextEditingController();
  bool isInSearch = false;
  Widget appbarTitle = Text(
    "Uni Chat",
    style: TextStyle(
      fontSize: 16.0,
//      fontFamily: "Waltograph",
      letterSpacing: 2.5,
    ),
  );


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _appBar(),
      body: Container(
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
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
//                          "Online",
                            "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.green,
//                            color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Online",
//                          "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
//                          "Online",
                            "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.green,
//                            color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Online",
//                          "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
//                          "Online",
                            "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.green,
//                            color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Online",
//                          "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
//                          "Online",
                            "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.green,
//                            color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Online",
//                          "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
//                          "Online",
                            "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.green,
//                            color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Online",
//                          "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
//                          "Online",
                            "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.green,
//                            color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Online",
//                          "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
//                          "Online",
                            "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.green,
//                            color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Online",
//                          "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                              border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
//                          "Online",
                            "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                height: size.width * 0.15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0.0,
                      child: Container(
                        height: size.width * 0.15,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      top: size.width * 0.02,
                      child: Text(
                        "Ali Rn",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.7,
                      top: size.width * 0.02,
                      child: Row(
                        children: [
                          Container(
                            height: size.width * 0.035,
                            width: size.width * 0.035,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.green,
//                            color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "Online",
//                          "25 min ago",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.2,
                      bottom: size.width * 0.02,
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _appBar(){
    return AppBar(
        backgroundColor: Color(0xffe2aff3),
        elevation: 0.0,
        centerTitle: true,
        title: appbarTitle,
        actions: [
          appbarActionButton()
        ]
    );
  }

  Widget appbarActionButton(){
    if (!isInSearch)
      return IconButton(
        onPressed: () {
          setState(() {
            isInSearch = true;
            appbarTitle = Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                autofocus: true,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,
                textDirection: TextDirection.rtl,
                controller: searchController,
                decoration: InputDecoration(
                  alignLabelWithHint: false,
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty) {
//                    print(_logs.length);
//                    print(finalList.length);
                    print(value);
//                    tempList.clear();
//                    for (int i = 0; i < _logs.length; i++) {
//                      if (_logs[i].text.toLowerCase().contains(value.toLowerCase()))
//                        tempList.add(_logs[i]);
//                    }
//                    setState(() => finalList = tempList);
                  }
                },
              ),
            );
          });
        },
        icon: Icon(Icons.search),
      );
    else
      return IconButton(
        onPressed: () {
//          searchController.clear();
          setState(() {
//            finalList = _logs;
            isInSearch = false;
            appbarTitle = Text(
              "Log",
              style: TextStyle(
                fontSize: 16.0,
//                fontFamily: "Waltograph",
                letterSpacing: 2.5,
              ),
            );
          });
        },
        icon: Icon(Icons.cancel),
      );
  }

}
