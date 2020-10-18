import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';

class ProfileMainBio extends StatefulWidget {
  @override
  _ProfileMainBioState createState() => _ProfileMainBioState();
}

class _ProfileMainBioState extends State<ProfileMainBio> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);

    Color backgroundColor = profileDataProvider.userProfile.background_color;
    Color fontColor = profileDataProvider.userProfile.font_color;

    return profileDataProvider.getBio() == '' ? SizedBox.shrink() :
    Container(
      width: size.width * 0.7,
      padding: EdgeInsets.all(size.width * 0.03,),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
            bottom: BorderSide(color: backgroundColor.withOpacity(1.0))
        ),
      ),
      child: Text(
        profileDataProvider.getBio(),
        maxLines: 6,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 11.0,
          color: fontColor.withOpacity(1.0),
        ),
      ),
    );
  }
}
