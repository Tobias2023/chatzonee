import 'package:chatzonee/models/chat_room_model.dart';
import 'package:flutter/material.dart';

class ChatRoomListItem extends StatelessWidget {

  final ChatRoom chatRoom;
  ChatRoomListItem({this.chatRoom});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(chatRoom.sender.imageUrl),
            radius: 30.0,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text(
                  chatRoom.sender.name, 
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
                  ),),

                Text(
                  chatRoom.messages.last.text, 
                  style: TextStyle(
                    color: Colors.grey[200],
                ),)
              ]
            ),
          ),
          Text(
            chatRoom.messages.last.time,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),  
    );
  }
}