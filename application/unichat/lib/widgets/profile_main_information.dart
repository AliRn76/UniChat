import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';


class ProfileMainInformation extends StatefulWidget {
  @override
  _ProfileMainInformationState createState() => _ProfileMainInformationState();
}

class _ProfileMainInformationState extends State<ProfileMainInformation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    Color fontColor = profileDataProvider.userProfile.font_color;
    double iconSize = 16.0;

    return Container(
      width: size.width * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            profileDataProvider.getFullName(),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(
              color: fontColor.withOpacity(1.0),
            ),
          ),
          SizedBox(height: size.width * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              profileDataProvider.getAge() == '' ? SizedBox.shrink() :
              Icon(
                Icons.bubble_chart,
                size: iconSize,
                color: fontColor.withOpacity(1.0),
              ),
              profileDataProvider.getAge() == '' ? SizedBox.shrink() :
              Text(
                profileDataProvider.getAge(),
                style: TextStyle(
                  color: fontColor.withOpacity(1.0),
                ),
              ),
              SizedBox(width: size.width * 0.04),
              profileDataProvider.getLocation() == '' ? SizedBox.shrink() :
              Icon(
                Icons.pin_drop,
                size: iconSize,
                color: fontColor.withOpacity(1.0),
              ),
              profileDataProvider.getLocation() == '' ? SizedBox.shrink() :
              Container(
                width: size.width * 0.25,
                child: Text(
                  profileDataProvider.getLocation(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    color: fontColor.withOpacity(1.0),
                  ),
                ),
              ),
            ],
          ),
          profileDataProvider.getPhonenumber() == '' ? SizedBox.shrink() :
          SizedBox(height: size.width * 0.03),
          profileDataProvider.getPhonenumber() == '' ? SizedBox.shrink() :
          Row(
            children: <Widget>[
              Icon(
                Icons.phone,
                size: iconSize,
                color: fontColor.withOpacity(1.0),
              ),
              SizedBox(width:size.width * 0.01),
              Container(
                width: size.width * 0.35,
                child: Text(
                  profileDataProvider.getPhonenumber(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: fontColor.withOpacity(1.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
