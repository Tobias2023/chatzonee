import 'package:chatzonee/models/mockData.dart';
import 'package:chatzonee/screens/chat/chatroom_list_item.dart';
import 'package:flutter/material.dart';
import 'package:chatzonee/screens/utils/constants.dart';



class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Chat',
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold, 
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle_outline), 
            color: Colors.white,
            iconSize: 30.0,
            onPressed: (){},
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 80),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                autofocus: false,
                onChanged: (v) {},
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey
                  ),
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: Constants.border, 
                  disabledBorder: Constants.border,
                  border: Constants.border,
                  errorBorder: Constants.border,
                  focusedBorder: Constants.border,
                  focusedErrorBorder: Constants.border,
                ),
              ),
            ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 80),
                  itemBuilder: (context, index) {
                    // print(Data.chatRooms[index].sender.name);
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/chatRoom', 
                          arguments: Data.chatRooms[index]);
                      },
                      child: ChatRoomListItem(
                        chatRoom: Data.chatRooms[index],
                      ));
                  },
                  itemCount: Data.chatRooms.length,
                ),
              )
            ],  
          ),
        ),
      )
    );
  }
}