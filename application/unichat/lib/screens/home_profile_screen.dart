import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/utils/myArc.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:unichat/widgets/profile_aboutUs.dart';
import 'package:unichat/widgets/profile_contact.dart';
import 'package:unichat/widgets/profile_edit.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/widgets/profile_main.dart';
import 'package:unichat/widgets/profile_security.dart';
import 'package:unichat/widgets/profile_setting.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int opacity;

  @override
  void initState(){
    super.initState();
    print("\n-- ProfileScreen");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStateProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);
    opacity = profileDataProvider.userProfile.background_opacity;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/nature-background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: opacity.toDouble(), sigmaY: opacity.toDouble()),
        child: Center(
          child: profileStateProvider.profileState.onEdit ? ProfileEdit()
              : profileStateProvider.profileState.onSecurity ? ProfileSecurity()
              : profileStateProvider.profileState.onSetting ? ProfileSetting()
              : profileStateProvider.profileState.onAboutUs ? ProfileAboutUs()
              : profileStateProvider.profileState.onChart ? ProfileChart()
              : ProfileMain(),
        ),
      ),
    );
  }


}


//TODO: age esme ahang o ina toolani bood ye fekri barash bokonm
//TODO: in ke cheghadr bg Image Blur beshe ro az karbar bgiram
//TODO: bg e harkas ro az khodesh begiram
//TODO: profile to  db save beshe