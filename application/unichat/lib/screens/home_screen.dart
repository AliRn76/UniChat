import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:unichat/screens/group.dart';
import 'package:unichat/screens/profile_screen.dart';
import 'package:unichat/screens/pv_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 1;
  GlobalKey bottomNavigationKey = GlobalKey();


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
    switch (page) {
      case 0:
        return PvScreen();
      case 1:
        return ProfileScreen();
      case 2:
        return GroupScreen();
    }
  }
}

//TODO: baraye tamam text ha overflow tanzim beshe ke az hadeshon bishtar nashan
//TODO: baad az edit , InvertColors baraye hame text ha SET beshe
//TODO: tooye edit profile, text overflow ha Set beshe
//TODO: profile picture beshe add kard