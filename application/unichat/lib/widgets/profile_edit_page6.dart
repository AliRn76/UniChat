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



class ProfileEditPage6 extends StatefulWidget {
  @override
  _ProfileEditPage6State createState() => _ProfileEditPage6State();
}

class _ProfileEditPage6State extends State<ProfileEditPage6> {
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;
  bool onChangeBackgroundColor = true;
  bool onChangeFontColor = false;
  bool opacityCheckedValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    profileDataProvider.user.background_opacity == 6
        ? opacityCheckedValue = true : opacityCheckedValue = false;


    return Stack(
      children: <Widget>[
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: InvertColors(
                    child: Text(
                      "Change Background Picture: ",
                      style: TextStyle(
                        color: backgroundColor.withOpacity(1.0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.width * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Background Opacity:",
                  style: TextStyle(
                    color: fontColor.withOpacity(1.0),
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                InvertColors(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: (opacityCheckedValue)
                            ? backgroundColor.withOpacity(1.0)
                            : fontColor.withOpacity(1.0),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    width: 22,
                    height: 22,
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.transparent,
                      ),
                      child: Checkbox(
                        activeColor: Colors.transparent,
                        checkColor: backgroundColor.withOpacity(1.0),
                        value: opacityCheckedValue,
                        tristate: false,
                        onChanged: (bool isChecked) {
                          setState(() {
//                            opacityCheckedValue = isChecked;
                            isChecked ? profileDataProvider.setOpacity(6)
                                : profileDataProvider.setOpacity(0);
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.width * 0.1),
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

          ],
        ),
        ProfileEditUtils.pageNumber(context, 6, setState),
      ],
    );
  }
}
