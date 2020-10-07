import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unichat/providers/connection_provider.dart';
import 'package:unichat/screens/pv_chat_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  TextEditingController searchController = TextEditingController();
  bool isInSearch = false;
  bool isLeftItem = true;
  Color fontColor = Colors.black;
  Color borderColor = Colors.grey;
  Color backgroundColor = Colors.white;
  Widget appBarSearchIcon = Icon(Icons.search);
  Widget appbarTitle = Text("Group Chat", style: TextStyle(fontSize: 16.0, letterSpacing: 2.5));

  List<String> list = ['Ali', 'Erfan', 'Farhad', 'Nima', 'Ehsan', 'Mamad', 'Sadegh', 'Hamid'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xfff3e2af),
          elevation: 0.0,
          centerTitle: true,
          title: _setTitle(),
          actions: [
            _appbarActionButton()
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
                  Color(0xfff3e2af),
                  Color(0xfff9f9f9),
                ]
            )
        ),
        child: SafeArea(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index){
              if(index+1 < list.length)
                return _buildGroupChatPreview(list[index], list[index+1]);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildGroupChatPreview(String str1, String str2){
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.6,
            height: size.width * 0.3,
            padding: EdgeInsets.all(size.width * 0.02),
            decoration: BoxDecoration(
              color: backgroundColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: borderColor),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0, -1),
                  child: Text(
                    "Group Name",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-1, -0.6),
                  child: Text(
                    "Member",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-1, -0.2),
                  child: Text(
                    "offline",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(1, -0.4),
                  child: Text(
                    "Unread",
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, 1),
                  child: Text(
                    "This is the actual text message , so work with it",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }

  Widget _buildGroupChatPreview2(int index){
    Size size = MediaQuery.of(context).size;
    if(index % 2 == 0)
      return GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder:  (context) => ChatScreen()));
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          height: size.width * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.greenAccent[400].withOpacity(0.0),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0.0,
                child: Container(
                  height: size.width * 0.15,
                  width: size.width * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/nature-background.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: size.width * 0.2,
                top: size.width * 0.02,
                child: Text(
                  "Ali Rn",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: size.width * 0.7,
                top: size.width * 0.02,
                child: Row(
                  children: [
                    Container(
                      height: size.width * 0.035,
                      width: size.width * 0.035,
                      decoration: BoxDecoration(
//                            border: Border.all(color: Colors.white, width: 0.5),
                        border: Border.all(color: Colors.black, width: 0.5),
                        borderRadius: BorderRadius.circular(15.0),
//                            color: Colors.green,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Text(
//                          "Online",
                      "25 min ago",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: size.width * 0.2,
                bottom: size.width * 0.02,
                child: Container(
                  width: size.width * 0.7,
                  child: Text(
                    "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    else
      return GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder:  (context) => ChatScreen()));
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          height: size.width * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.greenAccent[400].withOpacity(0.0),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0.0,
                child: Container(
                  height: size.width * 0.15,
                  width: size.width * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/nature-background.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: size.width * 0.2,
                top: size.width * 0.02,
                child: Text(
                  "Ali Rn",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: size.width * 0.7,
                top: size.width * 0.02,
                child: Row(
                  children: [
                    Container(
                      height: size.width * 0.035,
                      width: size.width * 0.035,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.5),
//                            border: Border.all(color: Colors.black, width: 0.5),
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.green,
//                            color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      "Online",
//                          "25 min ago",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: size.width * 0.2,
                bottom: size.width * 0.02,
                child: Container(
                  width: size.width * 0.7,
                  child: Text(
                    "Salam be shoma doostane aziz ke ta in jaye kar maro donbal kardi vali az kire ma khordid",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  Widget _setTitle(){
    final ConnectionProvider connectionProvider = Provider.of<ConnectionProvider>(context);
    if(connectionProvider.connection != null){
      if(connectionProvider.connection || !isInSearch){
        return appbarTitle;
      }else{
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Connecting  ",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontFamily: "Aria",
                fontWeight: FontWeight.w500,
              ),
            ),
            SpinKitFadingCircle(
              color: Colors.black,
              size: 20.0,
            ),
          ],
        );
      }
    }
//      return null;
  }

  Widget _appbarActionButton(){
    if (isInSearch)
      return IconButton(
        onPressed: () {
          setState(() {
            isInSearch = false;
            appbarTitle = Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                autofocus: true,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,
//                textDirection: TextDirection.rtl,
                controller: searchController,
                decoration: InputDecoration(
                  alignLabelWithHint: false,
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty) {
//                    print(_logs.length);
//                    print(finalList.length);
                    print(value);
//                    tempList.clear();
//                    for (int i = 0; i < _logs.length; i++) {
//                      if (_logs[i].text.toLowerCase().contains(value.toLowerCase()))
//                        tempList.add(_logs[i]);
//                    }
//                    setState(() => finalList = tempList);
                  }
                },
              ),
            );
            appBarSearchIcon = Icon(Icons.cancel);
          });
        },
        icon: appBarSearchIcon,
      );
    else
      return IconButton(
        onPressed: () {
//          searchController.clear();
          setState(() {
//            finalList = _logs;
            isInSearch = true;
            appbarTitle = Text(
              "Group Chat",
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 2.5,
              ),
            );
            appBarSearchIcon = Icon(Icons.search);
          });
        },
        icon: appBarSearchIcon,
      );
  }

}
