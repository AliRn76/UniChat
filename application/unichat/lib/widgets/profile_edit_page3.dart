import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/widgets/myArc.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:unichat/widgets/profile_edit_page1.dart';


class ProfileEditPage3 extends StatefulWidget {
  @override
  _ProfileEditPage3State createState() => _ProfileEditPage3State();
}

class _ProfileEditPage3State extends State<ProfileEditPage3> {
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;
  Country _selectedCupertinoCountry = CountryPickerUtils.getCountryByIsoCode('IR');


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStatesProvider = Provider.of<ProfileStatesProvider>(context);
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

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
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.06,
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: InvertColors(
                            child: Text(
                              "Country: ",
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
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.06,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: InvertColors(
                            child: Text(
                              "City: ",
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
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.06,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: InvertColors(
                            child: Text(
                              "University: ",
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
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.06,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: InvertColors(
                            child: Text(
                              "Field Of Study: ",
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
                      Transform.rotate(
                        angle: -0.3,
                        child: Container(
                          width: size.width * 0.27,
                          height: size.width * 0.06,
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                          ),
                          child: InvertColors(
                            child: Text(
                              "Entrance Year: ",
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
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.16,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0,),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          child: _buildCupertinoSelectedItem(_selectedCupertinoCountry),
                          onPressed: _openCupertinoCountryPicker,
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.06,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.city,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.06,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.university,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.06,
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.field,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11.0,
                            color: fontColor.withOpacity(1.0),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.45,
                        height: size.width * 0.06,
                        padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: backgroundColor.withOpacity(1.0))),
                        ),
                        child: Text(
                          profileDataProvider.user.entrance_year.toString(),
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
                  ),
                ],
              ),
            ],
          ),
        ),
        InvertColors(
          child: Align(
            alignment: Alignment(0, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: backgroundColor.withOpacity(1.0),
                  onPressed: (){
                    print("Go To Page 2");
                    setState(() {
                      profileStatesProvider.setPage3(false);
                      profileStatesProvider.setPage2(true);
                    });
                  },
                ),
                Text(
                  "3/6",
                  style: TextStyle(
                    color: backgroundColor.withOpacity(1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    print("Go To Page 4");
                    setState(() {
                      profileStatesProvider.setPage3(false);
                      profileStatesProvider.setPage4(true);
                    });
                  },
                  icon: Icon(Icons.arrow_forward),
                  color: backgroundColor.withOpacity(1.0),
                ),
              ],
            ),
          ),
        ),
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

  Widget _buildCupertinoSelectedItem(Country country) {
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
