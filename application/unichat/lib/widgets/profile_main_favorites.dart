import 'package:flutter/material.dart';
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
              _favoriteTextBuilder(profileDataProvider.getBook(), fontColor),

              profileDataProvider.getMovie() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getMovie(), fontColor),

              profileDataProvider.getToTravel() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getToTravel(), fontColor),

              profileDataProvider.getJob() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getJob(), fontColor),

              profileDataProvider.getSport() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getSport(), fontColor),

              profileDataProvider.getMovie() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getMovie(), fontColor),

              profileDataProvider.getTvSeries() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getTvSeries(), fontColor),

              profileDataProvider.getMusic() == '' ? SizedBox.shrink():
              _favoriteTextBuilder(profileDataProvider.getMusic(), fontColor),
            ],
          ),
        ),
      ],
    );
  }


  Widget _favoriteTextBuilder(String text, fontColor){
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(bottom: size.width * 0.06),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: fontColor.withOpacity(1.0),
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
