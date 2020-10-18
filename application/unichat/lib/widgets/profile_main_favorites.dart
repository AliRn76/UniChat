import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
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

    return InkWell(
      onTap: (){
        showDialog(
            context: context,
            builder: (BuildContext context){
              return BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: AlertDialog(
                  title: Text(
                    text,
                    textAlign: TextAlign.center,
                  ),
                  titleTextStyle: TextStyle(
                    color: fontColor.withOpacity(1.0),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: backgroundColor.withOpacity(0.7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(width: 2, color: backgroundColor.withOpacity(1.0)),
                  ),
                  actions: [
                    InvertColors(
                      child: FlatButton(
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: backgroundColor.withOpacity(1.0)),
                        ),
                        onPressed: (){
                          print("Cancel");
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    InvertColors(
                      child: FlatButton(
                        child: Text(
                          "OK",
                          style: TextStyle(color: backgroundColor.withOpacity(1.0)),
                        ),
                        onPressed: (){
                          print("ok");
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                  content: Text("Is in 125 Profile"),
                ),
              );
            }
        );
      },

      splashColor: Colors.black,
      child: Padding(
        padding: EdgeInsets.only(bottom: size.width * 0.06),
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: fontColor.withOpacity(1.0),
          ),
        ),
      ),
    );
  }

  Widget _favoriteIconBuilder(IconData icon, fontColor){
    Size size = MediaQuery.of(context).size;
    double iconSize = 16.0;

    return Padding(
      padding: EdgeInsets.only(bottom: size.width * 0.06),
      child: Icon(
        icon,
        size: iconSize,
        color: fontColor.withOpacity(1.0),
      ),
    );
  }
}
