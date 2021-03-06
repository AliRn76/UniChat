import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:popup_menu/popup_menu.dart';
import 'package:unichat/screens/contact_profile_screen.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:unichat/utils/pv_chat_utils.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:http/http.dart';
import 'package:unichat/widgets/pv_chat_input.dart';

import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final GlobalKey popUpScreenKey = GlobalKey();
  final GlobalKey popUpUploadKey = GlobalKey();
//  final SlidableController slidableController = SlidableController();

  final channel = IOWebSocketChannel.connect('ws://192.168.1.7:8000/pv_room/Admin/',
      headers: {"Authorization": "Token 03541fdd9d9e3e86a43de43352eadf228b40d213"});
//  final channel = IOWebSocketChannel.connect('wss://echo.websocket.org');


//  PopupMenu screeali2252

  Color textControllerBackgroundColor = Colors.transparent;
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

  List<Message> messageList = [
    Message("ok", "me", false, false),
    Message("!", "me", false, false),
    Message("ke bkhad mani ham dashte bashe , hamash daram fekr mikonm ke chi bnvisam , vali subject khasi be zehnam nmirese", "me", false, false),
    Message("Hello Guys", "me", true, true),
    Message("I'm Ok ", "you", false, true),
    Message("What do you think about this app , this is a test for long text  also It would be my honor if you tell me about this app", "me", true, true),
    Message("khob inam test kardim", "you", true, true),
    Message("dg che khabar", "me", false, true),
    Message("hi", "you", false, true),
    Message(".", "me", true, true),
    Message("ok man ino ngah mikonm ta to bargardi ", "you", false, true),
    Message(":)", "you", false, true),
    Message("hello again so ....", "you", true, true),
    Message("cheghadr sakhte alaki type kardan", "me", true, true),
    Message("man daram miram ye film bbinm , ...", "me", false, true),
    Message("ok hamin fekr konm kafie felan", "you", true, true),


  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    PopupMenu.context = context;
//    int count = _textController.text.split('\n').length;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan[300],
//          backgroundColor: Colors.white,
          elevation: 3.0,
          centerTitle: true,
          title: GestureDetector(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactProfile()),
              );
            },
            child: Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  Container(
                    height: size.width * 0.13,
                    width: size.width * 0.13,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/nature-background.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.04),
                  Flexible(
                    child: Text(
                      "Farhad",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 17.0,
//                      color: Colors.black
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
//              color: Colors.black,
              icon: Icon(Icons.more_vert),
            ),
          ]
      ),
      body: StreamBuilder(
          stream: channel.stream,
          builder: (context, snapshot) {
            if(snapshot.hasData)
              messageList.insert(0, snapshot.data);
            print(snapshot.connectionState);
            return  Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F2),
                ),
                child: Stack(
                  children: [
                    ListView.builder(
                      padding: EdgeInsets.only(top: 10, bottom: 40),
                      reverse: true,
                      itemCount: messageList.length,
//                 itemBuilder: (context, index) => _showMessages(index),
//                      itemBuilder: (context, index) => _test_websocket(index, messageList[index]),
                      itemBuilder: (context, index) => _showMessages(index, messageList[index]),
                    ),
                    PvChatInput(channel:channel),
                  ],
                )
            );
          }
      ),
    );
  }

  Widget _test_websocket(int index, String text){
    return Stack(
      children: [
        Align(
          alignment: Alignment(1, 1),
          child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 5.0, 14.0),
              child: Stack(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 60.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Colors.greenAccent[400],
                            width: 0.5,
                          ),
                          color: Colors.greenAccent[100],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1.5, 1.5),
                              blurRadius: 5.0,
                              color: Colors.greenAccent[700],
                            ),
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Text(
                          text != null ? text : "nothing",
//                          "",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 15,
                    child:  ClayText(
                      "00:00",
                      emboss: false,
                      size: 11.0,
                      depth: 100,
                    ),
                  ),
                ],
              )
          ),
        ),
      ],
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


  Widget _showMessages(int index, Message message){
    Size size = MediaQuery.of(context).size;
    final GlobalKey popUpMessageKey = GlobalKey();
    if(message.who == 'you'){
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
//          key: Key(message.text),
//          controller: slidableController,
//          actionPane: SlidableScrollActionPane(),
//          actionPane: SlidableBehindActionPane(),
//          actionPane: SlidableStrechActionPane(),

          actionPane: SlidableDrawerActionPane(),
          closeOnScroll: true,
          actionExtentRatio: 0.2,
          child: PvChatUtils.messageYou(context, message.text, message.liked, message.seen, setState),
          actions: <Widget>[
            Text("Reply"),
          ],
          secondaryActions: <Widget>[
            IconSlideAction(
              color: Colors.transparent,
              iconWidget: Icon(
                Icons.insert_emoticon,
                color: Colors.yellow[700],
              ),
              closeOnTap: true,
              onTap: () => print('laughed'),
            ),
            IconSlideAction(
              color: Colors.transparent,
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
      return PvChatUtils.messageMe(context, message.text, message.liked, message.seen);
    }

  }

}

class Message{
  String text;
  String who;
  bool liked;
  bool seen;
  Message(
    this.text,
    this.who,
    this.liked,
    this.seen
  );
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
//TODO: is Typing ro baadan ADD konm
//TODO: baade send , clear beshe
