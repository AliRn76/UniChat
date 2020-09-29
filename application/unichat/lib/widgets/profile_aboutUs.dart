import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/profile_states_provider.dart';
import 'package:unichat/widgets/myArc.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';


class ProfileAboutUs extends StatefulWidget {
  @override
  _ProfileAboutUsState createState() => _ProfileAboutUsState();
}

class _ProfileAboutUsState extends State<ProfileAboutUs> {
  Color backgroundColor = Color(0xA3D1FF);
  Color fontColor = Colors.black;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ProfileStatesProvider profileStateProvider = Provider.of<ProfileStatesProvider>(context);

    return Stack(
      children: [
        Container(
          width: size.width * 0.85,
          height: size.height * 0.70,
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text(
              "On About Us",
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 64.0,
          child: Container(
            height: 30.0,
            width: 30.0,
            child: MyArc(
              diameter: 300,
              color: backgroundColor.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          top: -8.0,
          right: 56.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: 20,
              icon: Icon(Icons.close),
              onPressed: (){
                setState(() {
                  profileStateProvider.setAboutUs(false);
                });
                print("Cancel");
              },
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 24.0,
          child: Container(
            height: 30.0,
            width: 30.0,
            child: MyArc(
              diameter: 300,
              color: backgroundColor.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          top: -8.0,
          right: 16.0,
          child: InvertColors(
            child: IconButton(
              color: backgroundColor.withOpacity(1.0),
              iconSize: 20,

              icon: Icon(Icons.check),
              onPressed: (){
                setState(() {
                  profileStateProvider.setAboutUs(false);
                });
                print("Done");
              },
            ),
          ),
        ),
      ],
    );
  }
}
