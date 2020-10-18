import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/utils/profile_edit_utils.dart';
import 'package:unichat/widgets/myArc.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:unichat/widgets/profile_edit_page1.dart';


class ProfileEditPage4 extends StatefulWidget {
  @override
  _ProfileEditPage4State createState() => _ProfileEditPage4State();
}

class _ProfileEditPage4State extends State<ProfileEditPage4> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    Color backgroundColor = profileDataProvider.userProfile.background_color;
    Color fontColor = profileDataProvider.userProfile.font_color;

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: [
              InvertColors(
                child: Text(
                  "Favorites: ",
                  style: TextStyle(
                    color: backgroundColor.withOpacity(1.0),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
              ),
              SizedBox(height: size.width * 0.01),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(height: size.width * 0.08),
                      ProfileEditUtils.transformIconText(context, Icons.directions_run, "Sport: "),
                      ProfileEditUtils.transformIconText(context, Icons.book, "Book: "),
                      ProfileEditUtils.transformIconText(context, Icons.local_movies, "Movie: "),
                      ProfileEditUtils.transformIconText(context, Icons.tv, "TV Series: "),
                      ProfileEditUtils.transformIconText(context, Icons.music_note, "Music: "),
                      ProfileEditUtils.transformIconText(context, Icons.videogame_asset, "Game: "),
                      ProfileEditUtils.transformIconText(context, Icons.airplanemode_active, "To Travel: "),
                    ],
                  ),
                  Column(
                    children: [
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.favorite_sport),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.favorite_book),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.favorite_movie),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.favorite_tv_series),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.favorite_music),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.favorite_game),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.favorite_to_travel),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        ProfileEditUtils.pageNumber(context, 4, setState),
      ],
    );
  }
}
