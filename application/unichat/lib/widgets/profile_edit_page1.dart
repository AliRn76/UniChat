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



class ProfileEditPage1 extends StatefulWidget {
  @override
  _ProfileEditPage1State createState() => _ProfileEditPage1State();
}

class _ProfileEditPage1State extends State<ProfileEditPage1> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    TextEditingController editName = TextEditingController();
    Color backgroundColor = profileDataProvider.userProfile.background_color;
    Color fontColor = profileDataProvider.userProfile.font_color;

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.width * 0.25,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.1,
                      ),
                      borderRadius: BorderRadius.circular(50),
//                            image: DecorationImage(
//                              image: AssetImage("assets/images/Michael B Jordan.png"),
//                              fit: BoxFit.cover,
//                            ),
                    ),
                    child: IconButton(
                      onPressed: (){
                        print("add Picture");
                      },
                      icon: Icon(Icons.add_photo_alternate),
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.width * 0.05),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(height: size.width * 0.08),
                      ProfileEditUtils.transformedText(context, "Name"),
                      ProfileEditUtils.transformedText(context, "Username: "),
                      ProfileEditUtils.transformedText(context, "Phone Number: "),
                      ProfileEditUtils.transformedText(context, "Email: "),
                    ],
                  ),
                  Column(
                    children: [
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.first_name + " " + profileDataProvider.userProfile.last_name),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.username),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.phone_number),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.email),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        ProfileEditUtils.pageNumber(context, 1, setState),
      ],
    );
  }
}
