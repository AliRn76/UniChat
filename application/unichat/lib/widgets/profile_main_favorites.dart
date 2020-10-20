import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/utils/profile_main_utils.dart';

class ProfileMainFavorites extends StatefulWidget {
  @override
  _ProfileMainFavoritesState createState() => _ProfileMainFavoritesState();
}

class _ProfileMainFavoritesState extends State<ProfileMainFavorites> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    Color fontColor = profileDataProvider.userProfile.font_color;
    Color backgroundColor = profileDataProvider.userProfile.background_color;



    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: size.width * 0.05,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              profileDataProvider.getBook() == '' ? SizedBox.shrink():
              _favoriteIconBuilder(Icons.library_books, fontColor),

              profileDataProvider.getMovie() == '' ? SizedBox.shrink():
              _favoriteIconBuilder(Icons.movie, fontColor),

              profileDataProvider.getToTravel() == '' ? SizedBox.shrink():
              _favoriteIconBuilder(Icons.airplanemode_active, fontColor),

              profileDataProvider.getJob() == '' ? SizedBox.shrink():
              _favoriteIconBuilder(Icons.work, fontColor),

              profileDataProvider.getSport() == '' ? SizedBox.shrink():
              _favoriteIconBuilder(Icons.directions_run, fontColor),

              profileDataProvider.getMovie() == '' ? SizedBox.shrink():
              _favoriteIconBuilder(Icons.videogame_asset, fontColor),

              profileDataProvider.getTvSeries() == '' ? SizedBox.shrink():
              _favoriteIconBuilder(Icons.tv, fontColor),

              profileDataProvider.getMusic() == '' ? SizedBox.shrink():
              _favoriteIconBuilder(Icons.music_note, fontColor),
            ],
          ),
        ),

        SizedBox(width: size.width * 0.06),

        Container(
          width: size.width * 0.62,
          child: Column(
            children: [
              profileDataProvider.getBook() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getBook(), fontColor, backgroundColor),

              profileDataProvider.getMovie() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getMovie(), fontColor, backgroundColor),

              profileDataProvider.getToTravel() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getToTravel(), fontColor, backgroundColor),

              profileDataProvider.getJob() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getJob(), fontColor, backgroundColor),

              profileDataProvider.getSport() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getSport(), fontColor, backgroundColor),

              profileDataProvider.getMovie() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getMovie(), fontColor, backgroundColor),

              profileDataProvider.getTvSeries() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getTvSeries(), fontColor, backgroundColor),

              profileDataProvider.getMusic() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getMusic(), fontColor, backgroundColor),
            ],
          ),
        ),
      ],
    );
  }


  Widget _favoriteTextBuilder(String text, Color fontColor, Color backgroundColor){
    Size size = MediaQuery.of(context).size;
//    double fontSize = size.width * 0.045;
    double fontSize = 14.0;
    return InkWell(
      onTap: () =>
        showDialog(
            context: context,
            builder: (BuildContext context) =>
              ProfileMainUtils.alertDialog(context, text, fontColor, backgroundColor),
        ),
      splashColor: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.2),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: size.width * 0.035, top: size.width * 0.035),
          child: Container(
            width: size.width * 0.62,
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
//                  textAlign: TextAlign.center,
              style: TextStyle(
                color: fontColor.withOpacity(1.0),
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _favoriteIconBuilder(IconData icon, fontColor){
    Size size = MediaQuery.of(context).size;
//    double iconSize = size.width * 0.052;
    double iconSize = 16.0;
    return Padding(
      padding: EdgeInsets.only(bottom: size.width * 0.035, top: size.width * 0.035),
      child: Icon(
        icon,
        size: iconSize,
        color: fontColor.withOpacity(1.0),
      ),
    );
  }
}
