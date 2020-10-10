import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/connection_provider.dart';

import 'package:unichat/screens/home_pv_screen.dart';
import 'package:unichat/screens/home_group_screen.dart';
import 'package:unichat/screens/home_profile_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(initialPage: 1);


  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: PageView(
            controller: pageController,
            children: <Widget>[
              PvScreen(),
              ProfileScreen(),
              GroupScreen(),
            ],
          )
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        pageController: pageController,
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
              title: "Group Chat",
          ),
        ],
        activeIconColor: Colors.black,
        textColor: Colors.black,
        barBackgroundColor: Colors.white,
        circleColor: Colors.white,
        inactiveIconColor: Colors.black.withOpacity(0.5),
        initialSelection: 1,
      ),
    );
  }
}

//TODO: baraye tamam text ha overflow tanzim beshe ke az hadeshon bishtar nashan
//TODO: baad az edit , InvertColors baraye hame text ha SET beshe
//TODO: tooye edit profile, text overflow ha Set beshe
//TODO: profile picture beshe add kard