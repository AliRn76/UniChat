import 'package:flutter/material.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';


class ProfileEditUtils{

  static transformedText(BuildContext context, String text){
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);
    Size size = MediaQuery.of(context).size;
    Color backgroundColor = profileDataProvider.userProfile.background_color;
    return Transform.rotate(
      angle: -0.3,
      child: Container(
        width: size.width * 0.27,
        height: size.width * 0.07,
        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: backgroundColor.withOpacity(1.0)),
          ),
        ),
        child: InvertColors(
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 11.0,
              color: backgroundColor.withOpacity(1.0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }



  static transformIconText(BuildContext context, IconData icon, String text){
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);
    Size size = MediaQuery.of(context).size;
    Color backgroundColor = profileDataProvider.userProfile.background_color;
    Color fontColor = profileDataProvider.userProfile.font_color;
    return Transform.rotate(
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
              icon,
              size: 15.0,
              color: fontColor.withOpacity(1.0),
            ),
            InvertColors(
              child: Text(
                text,
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
    );
  }



  static transformImageText(BuildContext context, String image, String text){
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);
    Size size = MediaQuery.of(context).size;
    Color backgroundColor = profileDataProvider.userProfile.background_color;
    return Transform.rotate(
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
            Container(
              width: size.width * 0.06,
              height: size.width * 0.05,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            InvertColors(
              child: Text(
                text,
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
    );
  }



  static alignedText(BuildContext context, String text){
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);
    Size size = MediaQuery.of(context).size;
    Color backgroundColor = profileDataProvider.userProfile.background_color;
    Color fontColor = profileDataProvider.userProfile.font_color;
    return Container(
      width: size.width * 0.45,
      height: size.width * 0.07,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 11.0,
          color: fontColor.withOpacity(1.0),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }



  static  pageNumber(BuildContext context, int page, StateSetter setState){
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    Color backgroundColor = profileDataProvider.userProfile.background_color;
    return InvertColors(
      child: Align(
        alignment: Alignment(0, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            page == 1 ? IconButton(icon: Icon(null))
            : IconButton(
              icon: Icon(Icons.arrow_back),
              color: backgroundColor.withOpacity(1.0),
              onPressed: (){
                print("Go To Page ${page - 1}");
                setState(() {
                  page == 2 ? profileStatesProvider.setPage2(false)
                      : page == 3 ? profileStatesProvider.setPage3(false)
                      : page == 4 ? profileStatesProvider.setPage4(false)
                      : page == 5 ? profileStatesProvider.setPage5(false)
                      : page == 6 ? profileStatesProvider.setPage6(false) :null;

                  page == 2 ? profileStatesProvider.setPage1(true)
                      : page == 3 ? profileStatesProvider.setPage2(true)
                      : page == 4 ? profileStatesProvider.setPage3(true)
                      : page == 5 ? profileStatesProvider.setPage4(true)
                      : page == 6 ? profileStatesProvider.setPage5(true) :null;
                });
              },
            ),
            Text(
              "$page/6",
              style: TextStyle(
                color: backgroundColor.withOpacity(1.0),
                fontWeight: FontWeight.bold,
              ),
            ),
            page == 6 ? IconButton(icon: Icon(null))
            : IconButton(
              onPressed: (){
                print("Go To Page ${page + 1}");
                setState(() {
                  page == 1 ? profileStatesProvider.setPage1(false)
                      : page == 2 ? profileStatesProvider.setPage2(false)
                      : page == 3 ? profileStatesProvider.setPage3(false)
                      : page == 4 ? profileStatesProvider.setPage4(false)
                      : page == 5 ? profileStatesProvider.setPage5(false) :null;

                  page == 1 ? profileStatesProvider.setPage2(true)
                      : page == 2 ? profileStatesProvider.setPage3(true)
                      : page == 3 ? profileStatesProvider.setPage4(true)
                      : page == 4 ? profileStatesProvider.setPage5(true)
                      : page == 5 ? profileStatesProvider.setPage6(true) :null;
                });
              },
              icon: Icon(Icons.arrow_forward),
              color: backgroundColor.withOpacity(1.0),
            ),
          ],
        ),
      ),
    );
  }

}

