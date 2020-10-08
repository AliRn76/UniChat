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
import 'package:unichat/widgets/profile_edit_page6.dart';
import 'package:unichat/widgets/profile_edit_page1.dart';
import 'package:unichat/widgets/profile_edit_page2.dart';
import 'package:unichat/widgets/profile_edit_page3.dart';
import 'package:unichat/widgets/profile_edit_page4.dart';
import 'package:unichat/widgets/profile_edit_page5.dart';



class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  int currentPage = 1;
  bool forwardPage = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    Color backgroundColor = profileDataProvider.user.background_color;

    return Stack(
      children: <Widget>[
        Container(
          width: size.width * 0.85,
          height: size.height * 0.70,
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              final inAnimation =
              Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                  .animate(animation);
              final outAnimation =
              Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                  .animate(animation);



              if (setAxisTransition()) {
                return ClipRect(
                  child: SlideTransition(
                    position: inAnimation,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: child,
                    ),
                  ),
                );

              } else {
                return ClipRect(
                  child: SlideTransition(
                    position: outAnimation,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: child,
                    ),
                  ),
                );
              }
            },
            child: profileStatesProvider.profileEditState.page1 ? ProfileEditPage1()
                : profileStatesProvider.profileEditState.page2 ? ProfileEditPage2()
                : profileStatesProvider.profileEditState.page3 ? ProfileEditPage3()
                : profileStatesProvider.profileEditState.page4 ? ProfileEditPage4()
                : profileStatesProvider.profileEditState.page5 ? ProfileEditPage5()
                : profileStatesProvider.profileEditState.page6 ? ProfileEditPage6()
                : null,
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
                  profileDataProvider.setBackgroundColor(profileStatesProvider.lastBackgroundColor);
                  profileDataProvider.setFontColor(profileStatesProvider.lastFontColor);
                  profileStatesProvider.setEdit(false);
                  profileStatesProvider.setPage1(true);
                  profileStatesProvider.setPage2(false);
                  profileStatesProvider.setPage3(false);
                  profileStatesProvider.setPage4(false);
                  profileStatesProvider.setPage5(false);
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
                  profileStatesProvider.setEdit(false);
                  profileStatesProvider.setPage1(true);
                  profileStatesProvider.setPage2(false);
                  profileStatesProvider.setPage3(false);
                  profileStatesProvider.setPage4(false);
                  profileStatesProvider.setPage5(false);
                });
                print("Done");
              },
            ),
          ),
        ),
      ],
    );
  }

  bool setAxisTransition(){
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    currentPage == 1 && profileStatesProvider.profileEditState.page2 ? {forwardPage = true, currentPage = 2 }
        : currentPage == 2 && profileStatesProvider.profileEditState.page3 ? {forwardPage = true, currentPage = 3}
        : currentPage == 3 && profileStatesProvider.profileEditState.page4 ? {forwardPage = true, currentPage = 4}
        : currentPage == 4 && profileStatesProvider.profileEditState.page5 ? {forwardPage = true, currentPage = 5}
        : currentPage == 5 && profileStatesProvider.profileEditState.page6 ? {forwardPage = true, currentPage = 6}

        : currentPage == 6 && profileStatesProvider.profileEditState.page5 ? {forwardPage = false, currentPage = 5}
        : currentPage == 5 && profileStatesProvider.profileEditState.page4 ? {forwardPage = false, currentPage = 4}
        : currentPage == 4 && profileStatesProvider.profileEditState.page3 ? {forwardPage = false, currentPage = 3}
        : currentPage == 3 && profileStatesProvider.profileEditState.page2 ? {forwardPage = false, currentPage = 2}
        : currentPage == 2 && profileStatesProvider.profileEditState.page1 ? {forwardPage = false, currentPage = 1}
        : null;
    return forwardPage;
  }


}

//TODO: relationship fix beshe (aya bayad boolean bashe? :|)
//TODO: birthdate fix beshe
//TODO: TextField ha Add beshe
