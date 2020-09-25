import 'package:flutter/material.dart';
import 'package:popup_menu/popup_menu.dart';


class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final GlobalKey popUpScreenKey = GlobalKey();
  final GlobalKey popUpUploadKey = GlobalKey();


//  PopupMenu screen;

  bool condi = true;
  bool itHasLike = false;
  bool micPressed = false;
//  int numb = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    PopupMenu.context = context;
//    int count = _textController.text.split('\n').length;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan[300],
          elevation: 0.0,
          centerTitle: true,
          title: Row(
            children: [
              Container(
                height: size.width * 0.13,
                width: size.width * 0.13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/nature-3807667_1920.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.04),
              Flexible(
                child: Text(
                  "Farhad Farhad Farhad Farhad Farhad Farhad",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17.0,
                ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              key: popUpScreenKey,
              onPressed: _screenOptions,
              icon: Icon(Icons.more_vert),
            ),
          ]
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
                  0.3,
                  0.7,
                ],
                colors: [
                  Colors.cyan[300],
                  Color(0xfff9f9f9),
                ]
            )
        ),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => _showMessages(index),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                height: size.width * 0.14,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    color: Colors.grey[700],
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          expands: true,
                          controller: _textController,
                          autofocus: false,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                          ),
                          maxLines: null,
                          onChanged: (text){
                            print(text);
                          },
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      color: Colors.grey[700],
                      key: popUpUploadKey,
                      onPressed: _uploadOptions,
                    ),
                    GestureDetector(
//                      onLongPressStart: _startPressMic,
//                      onLongPressEnd: _endPressMic,
                      child: Icon(
                        Icons.mic,
                        color: Colors.grey[700],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _screenOptions(){
    PopupMenu menu = PopupMenu(
      backgroundColor: Colors.cyan[100],
      lineColor: Colors.white,
      highlightColor: Colors.red,
      maxColumn: 2,
      items: [
        MenuItem(
            title: 'Search',
            textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
            image: Icon(Icons.search, color: Colors.black54),
        ),
        MenuItem(
            title: 'Block',
            textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
            image: Icon(Icons.block, color: Colors.black54),
        ),
        MenuItem(
          title: 'Mute',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.volume_off, color: Colors.black54),
        ),
        MenuItem(
            title: 'Setting',
            textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
            image: Icon(Icons.settings, color: Colors.black54),
        ),
      ],
    );
    menu.show(widgetKey: popUpScreenKey);
  }

  void _uploadOptions(){
    PopupMenu menu = PopupMenu(
      backgroundColor: Colors.cyan[100],
      lineColor: Colors.white,
      highlightColor: Colors.red,
      maxColumn: 3,
      items: [
        MenuItem(
          title: 'Camera',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.camera_alt, color: Colors.black54),
        ),
        MenuItem(
          title: 'Galery',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.image, color: Colors.black54),
        ),
        MenuItem(
          title: 'File',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.attach_file, color: Colors.black54),
        ),
        MenuItem(
          title: 'Music',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.music_note, color: Colors.black54),
        ),
        MenuItem(
          title: 'Location',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.location_on, color: Colors.black54),
        ),
        MenuItem(
          title: 'Contact',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.contact_phone, color: Colors.black54),
        ),
      ],
    );
    menu.show(widgetKey: popUpUploadKey);
  }

  void _messagesOptions(popUpMessageKey){
    PopupMenu menu = PopupMenu(
      backgroundColor: Colors.cyan[100],
      lineColor: Colors.white,
      highlightColor: Colors.red,
      maxColumn: 4,
      items: [
        MenuItem(
          title: 'Copy',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.content_copy, color: Colors.black54),
        ),
        MenuItem(
          title: 'Add Reaction',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.tag_faces, color: Colors.black54),
        ),
        MenuItem(
          title: 'Reply',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.reply, color: Colors.black54),
        ),
        MenuItem(
          title: 'Forward',
          textStyle: TextStyle(fontSize: 9.0, color: Colors.black54),
          image: Icon(Icons.arrow_forward, color: Colors.black54),
        ),
      ],
    );
    menu.show(widgetKey: popUpMessageKey);
  }

  Widget _showMessages(int index){
    Size size = MediaQuery.of(context).size;
    final GlobalKey popUpMessageKey = GlobalKey();

    if(index % 5 == 0)
      condi = !condi;
    if(condi){
      index ++;
      return GestureDetector(
        key: popUpMessageKey,
        onTap: () => _messagesOptions(popUpMessageKey),
        onLongPress: (){
          print("mark(select) message");
        },
        onDoubleTap: (){
          print("add like on it");
        },
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 4.0),
              decoration: BoxDecoration(
              ),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.pink[300].withOpacity(0.4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15.0, 15.0, 45.0, 15.0),
                      child: Text(
                        "Hello I'm Good  how are you doing babe \n tell me when can I call you",
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    top: 5.0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red[700],
                      size: 18.0,
                    ),
                  ),
                  Positioned(
                    right: 12.0,
                    bottom: 0.0,
                    child: Row(
                      children: [
                        Text(
                          "14:05",
                          style: TextStyle(
                            color: Colors.red[900].withOpacity(0.7),
                            fontSize: 11.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: Icon(
                            Icons.done_all,
                            color: Colors.red[900].withOpacity(0.7),
                            size: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),

          ],
        ),
      );
    }
    else{
      index ++;
      return Container(
        margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.greenAccent[200].withOpacity(0.4),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Hello I'm Good  how are you doing babe \n tell me when can I call you",
          ),
        ),
      );
    }

  }
}


//TODO: Hero baraye profile pic + name Add konm
//TODO: baraye PopupMenu color .withOpacity(0.5) bzaram
//TODO: pm haye Contact bar asase background color esh bashe
//TODO: ba zadan rooye add beshe emoji add kard
//TODO: double tap rooye pm, recently emoji ro bzare roosh
//TODO: if bzaram ke age like dasht, padding ha ba vaghti like nadare, fargh kone
//TODO: icon Add Reaction beshe, icon e last emoji
//TODO: mishe emoji ro mesle issue haye github ovord ziresh
//TODO: item ha dragble beshan , baraye Reply