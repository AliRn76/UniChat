import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class ProfileImage extends StatefulWidget {
  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {

  int currentPicture = 0;

  List<String> pictures = [
    "https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=800&q=70",
  ];



  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: "profile_picture",
            child: LiquidSwipe(
//        waveType: WaveType.circularReveal,
              waveType: WaveType.liquidReveal,
//            enableSlideIcon: true,
              onPageChangeCallback: (value) =>
                  setState(() => currentPicture = value),
              pages: [
                Container(
                  height: size.height ,
                  width: size.width,
                  color: Colors.black,
                  child: Image.asset("assets/images/Michael B Jordan.png"),
                ),
                for (var picture in pictures) widgetPictures(picture, size),
              ],
            ),
          ),
          Positioned(
            top: size.width * 0.1,
            left: 10.0,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () =>
                Navigator.pop(context),
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i=0 ; i<pictures.length ; i++)
                  currentPicture == i ? pictureNumber(size, true)
                      : pictureNumber(size, false)
              ],
            )
          )
        ],
      ),
    );
  }

  Widget widgetPictures(String picture, Size size){
    return Container(
      height: size.height ,
      width: size.width,
      color: Colors.black,
      child: Image.network(picture),
    );
  }

  Widget pictureNumber(Size size, bool isSelected){
    print(currentPicture);
    if (isSelected)
      return Flexible(
        child: Container(
          margin: EdgeInsets.all(1.0),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          height: size.width * 0.03,
          width: size.width * 0.03,
        ),
      );
    else
      return Flexible(
        child: Container(
          margin: EdgeInsets.all(1.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 0.5,
                color: Colors.white,
              )
          ),
          height: size.width * 0.03,
          width: size.width * 0.03,
        ),
      );
  }

}
