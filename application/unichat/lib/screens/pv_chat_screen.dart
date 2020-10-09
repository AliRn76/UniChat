import 'package:flutter/material.dart';
import 'package:popup_menu/popup_menu.dart';
import 'package:unichat/screens/contact_profile_screen.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:unichat/utils/pv_chat_utils.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final GlobalKey popUpScreenKey = GlobalKey();
  final GlobalKey popUpUploadKey = GlobalKey();


//  PopupMenu screen;

  Color textControllerBackgroundColor = Colors.white.withOpacity(0.0);
  Color iconColor = Colors.black;
  bool condi = true;
//  bool itHasLike = false;
//  bool micPressed = false;
  bool typed = false;
//  int numb = 0;

  @override
  void initState() {
    super.initState();
//    _textController.addListener(_setTextBgColor);
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    PopupMenu.context = context;
//    int count = _textController.text.split('\n').length;

    return Scaffold(
      appBar: AppBar(
//          backgroundColor: Colors.cyan[300],
          backgroundColor: Colors.white,
          elevation: 3.0,
          centerTitle: true,
          title: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactProfile()),
              );
            },
            child: Container(
              color: Colors.white.withOpacity(0.0),
              child: Row(
                children: [
                  Container(
                    height: size.width * 0.13,
                    width: size.width * 0.13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      image: DecorationImage(
                        image: AssetImage("assets/images/nature-background.jpg"),
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
                      color: Colors.black
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              key: popUpScreenKey,
              onPressed: _screenOptions,
              color: Colors.black,
              icon: Icon(Icons.more_vert),
            ),
          ]
      ),
      body: Container(
//        width: double.infinity,
//        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF2F2F2),
//          color: Colors.lightGreen[100],
//            gradient: LinearGradient(
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//                stops: [
//                  0.3,
//                  0.9,
//                ],
//                colors: [
//                  Colors.cyan[300],
//                  Color(0xfff9f9f9),
//                ]
//            )
        ),
        child: Stack(
          children: [
            ListView.builder(
              padding: EdgeInsets.only(bottom: 40),
              reverse: true,
              itemCount: 40,
              itemBuilder: (context, index) => _showMessages(index),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                height: 45.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: typed ? Colors.white.withOpacity(1.0) : Colors.white.withOpacity(0.0),
//                  border: Border(
//                      top: BorderSide(color: Colors.black, width: 1.0)
//                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.insert_emoticon),
                      color: iconColor,
                      onPressed: (){
                        print("Open Custom Emoji Keybord");
                      },
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          onTap: (){
                            setState(() => typed = true);
                          },
                          expands: false,
                          controller: _textController,
                          autofocus: false,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                          ),
                          maxLines: 1,
                          onChanged: (text){
                            if(text == '')
                              setState(() => typed = false);
                            else if(typed == false)
                              setState(() => typed = true);
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
                      color: iconColor,
                      key: popUpUploadKey,
                      onPressed: _uploadOptions,
                    ),
                    GestureDetector(
//                      onLongPressStart: _startPressMic,
//                      onLongPressEnd: _endPressMic,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.mic,
                          color: iconColor,
                        ),
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

//  void _setTextBgColor() => _textController.text == '' ?
//      setState(() => typed = false): null;


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
        child: Slidable(
//          actionPane: SlidableScrollActionPane(),
//          actionPane: SlidableBehindActionPane(),
//          actionPane: SlidableStrechActionPane(),
          actionPane: SlidableDrawerActionPane(),
          closeOnScroll: true,
          actionExtentRatio: 0.2,
            child: index % 2 == 0 ? PvChatUtils.messageYou(context, false, false, setState)
            : PvChatUtils.messageYou(context, true, true, setState),
          actions: <Widget>[
            Text("Reply"),
          ],
          secondaryActions: <Widget>[
            IconSlideAction(
              color: Colors.yellow.withOpacity(0.0),
              iconWidget: Icon(
                Icons.insert_emoticon,
                color: Colors.yellow[700],
              ),
              closeOnTap: true,
              onTap: () => print('laughed'),
            ),
            IconSlideAction(
              color: Colors.red.withOpacity(0.0),
              iconWidget: Icon(
                Icons.favorite,
                color: Colors.red[700],
              ),
              closeOnTap: true,
              onTap: () => print('loved'),
            ),
//            InkWell(
//              onTap: (){print("Liked");},
//              child: Center(
//                child: Text(
//                  "Like",
//                  style: TextStyle(
//                    color: Colors.lightBlue,
//                    fontWeight: FontWeight.bold,
//                  ),
//                ),
//              ),
//            ),
//            InkWell(
//              onTap: (){print("Disliked");},
//              child: Center(
//                child: Text(
//                  "Dislike",
//                  style: TextStyle(
//                    color: Colors.redAccent,
//                    fontWeight: FontWeight.bold,
//                  ),
//                ),
//              ),
//            ),
          ],
        ),
      );
    }
    else{
      index ++;
      return index % 3 == 0 ? PvChatUtils.messageMe(context, false, false)
          : index % 2 == 0 ? PvChatUtils.messageMe(context, false, true)
          : PvChatUtils.messageMe(context, true, true);
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
//TODO: _messagesOptions bug dare, 2 ta hamzaman mishe baz kard, baghiashonm mishe
//TODO: vaghti zad roo message bejaye PopUpMenu mishe DraggableScrollableSheet estefade kard