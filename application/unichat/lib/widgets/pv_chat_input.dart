import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';


class PvChatInput extends StatefulWidget {
  IOWebSocketChannel channel;
  PvChatInput({this.channel});

  @override
  _PvChatInputState createState() => _PvChatInputState();
}

class _PvChatInputState extends State<PvChatInput> {
  final TextEditingController _textController = TextEditingController();
  final GlobalKey popUpScreenKey = GlobalKey();
  final GlobalKey popUpUploadKey = GlobalKey();

//  final channel = IOWebSocketChannel.connect('ws://192.168.1.7:8000/last/');
//  final channel = IOWebSocketChannel.connect('wss://echo.websocket.org');

  Color textControllerBackgroundColor = Colors.white.withOpacity(0.0);
  Color iconColor = Colors.black;
  bool condi = true;
//  bool itHasLike = false;
//  bool micPressed = false;
  bool typed = false;



  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, 1),
      child: Container(
        height: 45.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: typed ? Colors.white.withOpacity(1.0) : Colors.white.withOpacity(0.0),
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.send),

              color: iconColor,
              onPressed: (){
                widget.channel.sink.add(_textController.text);
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
              onPressed: (){},
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
    );
  }
}
