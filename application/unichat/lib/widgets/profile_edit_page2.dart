import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/utils/profile_edit_utils.dart';
import 'package:unichat/utils/myArc.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:unichat/widgets/profile_edit_page1.dart';

class ProfileEditPage2 extends StatefulWidget {
  @override
  _ProfileEditPage2State createState() => _ProfileEditPage2State();
}

class _ProfileEditPage2State extends State<ProfileEditPage2> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    Color backgroundColor = profileDataProvider.userProfile.background_color;
    Color fontColor = profileDataProvider.userProfile.font_color;

    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            SizedBox(height: size.width * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: size.width * 0.08),
                    Transform.rotate(
                      angle: -0.3,
                      origin: Offset(0.0, -15),
                      child: Container(
                        width: size.width * 0.27,
                        height: size.width * 0.14,
                        padding: EdgeInsets.only(top: 5.0, left: 5.0),
                        margin: EdgeInsets.only(bottom: 5.0, top:20),
                        decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: InvertColors(
                          child: Text(
                            "Bio: ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 11.0,
                              color: backgroundColor.withOpacity(1.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.width * 0.08),
                    ProfileEditUtils.transformImageText(context, "assets/images/icons/instagram-icon.png", "Instagram: "),
                    ProfileEditUtils.transformImageText(context, "assets/images/icons/telegram-icon.png", "Telegram: "),
                    SizedBox(height: size.width * 0.08),
                    ProfileEditUtils.transformedText(context, "Birth Date: "),
                    ProfileEditUtils.transformedText(context, "Relationship: "),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: size.width * 0.45,
                      height: size.width * 0.14,
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      margin: EdgeInsets.only(bottom: 5.0, top:20),
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: backgroundColor.withOpacity(1.0))),
                      ),
                      child: Text(
                        profileDataProvider.userProfile.bio,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: fontColor.withOpacity(1.0),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: size.width * 0.08),
                    ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.instagram),
                    ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.telegram),
                    SizedBox(height: size.width * 0.08),
                    ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.birth_date.toString()),
                    ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.telegram),
                  ],
                ),
              ],
            ),
          ],
        ),
        ProfileEditUtils.pageNumber(context, 2, setState),
      ],
    );
  }
}
