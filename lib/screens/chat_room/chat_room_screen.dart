import 'package:chatzonee/models/chat_room_model.dart';
import 'package:chatzonee/models/message_model.dart';
import 'package:chatzonee/screens/chat_room/chat_input.dart';
import 'package:flutter/material.dart';

class ChatRoomScreen extends StatefulWidget {
  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {

  @override
  Widget build(BuildContext context) {
    ChatRoom chatRoom = ModalRoute.of(context).settings.arguments;
    List<Message> messages = chatRoom.messages;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(chatRoom.sender.imageUrl), 
              radius: 20.0,
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(chatRoom.sender.name, 
                  style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  chatRoom.sender.message,
                  style: TextStyle(
                    fontSize: 10.0,
                  )
                )
              ],
            )
          ],
        ),
        actions: <Widget>[
         Container(
           padding: const EdgeInsets.all(5), 
           child: Icon(
             Icons.more_horiz, 
             color: Colors.white,)
             ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0394fc),
              Color(0xff03c6fc),
              Color(0xff03fcad),
            ]
          )
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(),
          ), 
          ChatInput()
          ],
        ),
      ),
    );
  }
}