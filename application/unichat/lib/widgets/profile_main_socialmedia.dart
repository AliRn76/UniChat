import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_data_provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';

class ProfileMainSocialMedia extends StatefulWidget {
  @override
  _ProfileMainSocialMediaState createState() => _ProfileMainSocialMediaState();
}

class _ProfileMainSocialMediaState extends State<ProfileMainSocialMedia> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ProfileDataProvider profileDataProvider = Provider.of<ProfileDataProvider>(context);
    Color fontColor = profileDataProvider.userProfile.font_color;

    if(profileDataProvider.getInstagram() == '' && profileDataProvider.getTelegram() == '')
      return SizedBox.shrink();

    else if(profileDataProvider.getTelegram() == '')
      return Row(
        children: <Widget>[
          Image.asset(
            "assets/images/icons/instagram-icon.png",
            width: size.width * 0.08,
            height: size.width * 0.08,
            fit: BoxFit.cover,
          ),
          Container(
            width: size.width * 0.62,
            height: size.width * 0.08,
            child: Text(
              profileDataProvider.getInstagram(),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: fontColor.withOpacity(1.0),
              ),
            ),
          ),
        ],
      );
    else if(profileDataProvider.getInstagram() == '')
      return Row(
        children: <Widget>[
          Image.asset(
            "assets/images/icons/telegram-icon.png",
            width: size.width * 0.08,
            height: size.width * 0.06,
            fit: BoxFit.fitHeight,
          ),
          Container(
            width: size.width * 0.62,
            height: size.width * 0.08,
            child: Text(
              profileDataProvider.getTelegram(),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: fontColor.withOpacity(1.0),
              ),
            ),
          ),
        ],
      );
    else
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/icons/instagram-icon.png",
                  width: size.width * 0.08,
                  height: size.width * 0.08,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: size.width * 0.27,
                  height: size.width * 0.08,
                  child: Text(
                    profileDataProvider.getInstagram(),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: fontColor.withOpacity(1.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Container(
                  width: size.width * 0.27,
                  height: size.width * 0.06,
                  child: Text(
                    profileDataProvider.getTelegram(),
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: fontColor.withOpacity(1.0),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/icons/telegram-icon.png",
                  width: size.width * 0.08,
                  height: size.width * 0.06,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          )
        ],
      );
  }
}
