import 'package:flutter/material.dart';

class ContactProfileUtils{

  static contactProfileScrollMedia(BuildContext context){
    Color customColor = Color(0xA3D1FF);
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      builder: (BuildContext context, mediaScrollController) {
        return Container(
          decoration: BoxDecoration(
              color: customColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                color: customColor.withOpacity(1.0),
                width: 1.0,
              )
          ),
          child: Column(
            children: [
              ListView(
                padding: EdgeInsets.only(top: 10.0),
                shrinkWrap: true,
                controller: mediaScrollController,
                children: [
                  Center(
                      child: Text(
                        "Media",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  controller: mediaScrollController,
//                                    shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                  ),
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Text(
                        'Picture $index',
                        style: TextStyle(color: Colors.black54),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}