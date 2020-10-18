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


class ProfileEditPage3 extends StatefulWidget {
  @override
  _ProfileEditPage3State createState() => _ProfileEditPage3State();
}

class _ProfileEditPage3State extends State<ProfileEditPage3> {
  Country _selectedCupertinoCountry = CountryPickerUtils.getCountryByIsoCode('IR');

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
              SizedBox(height: size.width * 0.1),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(height: size.width * 0.18),
                      ProfileEditUtils.transformedText(context, "Country: "),
                      ProfileEditUtils.transformedText(context, "City: "),
                      ProfileEditUtils.transformedText(context, "University: "),
                      ProfileEditUtils.transformedText(context, "Field Of Study: "),
                      ProfileEditUtils.transformedText(context, "Entrance Year: "),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.17,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0,),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          child: _buildCupertinoSelectedItem(_selectedCupertinoCountry, fontColor),
                          onPressed: _openCupertinoCountryPicker,
                        ),
                      ),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.city),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.university),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.field),
                      ProfileEditUtils.alignedText(context, profileDataProvider.userProfile.entrance_year.toString()),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        ProfileEditUtils.pageNumber(context, 3, setState),
      ],
    );
  }


  void _openCupertinoCountryPicker() => showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerCupertino(
          backgroundColor: Colors.black.withOpacity(0.6),
          itemBuilder: _buildCupertinoItem,
          pickerSheetHeight: 300.0,
          pickerItemHeight: 75,
          useMagnifier: true,
          initialCountry: _selectedCupertinoCountry,
          onValuePicked: (Country country) =>
              setState(() => _selectedCupertinoCountry = country),
//          priorityList: [
//            CountryPickerUtils.getCountryByIsoCode('IR'),
//          ],
        );
      });

  Widget _buildCupertinoSelectedItem(Country country, Color fontColor) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(width: size.width * 0.01),
        Flexible(
          child: Text(
            country.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11.0,
              color: fontColor.withOpacity(1.0),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCupertinoItem(Country country) {
    Size size = MediaQuery.of(context).size;
    return DefaultTextStyle(
      style: TextStyle(
        color: CupertinoColors.white,
        fontSize: 16.0,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: size.width * 0.01),
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(width: size.width * 0.01),
          Flexible(child: Text(country.name))
        ],
      ),
    );
  }

}
