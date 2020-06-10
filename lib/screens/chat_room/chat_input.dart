import 'package:chatzonee/screens/utils/constants.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String message;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        ) ,
      ),
      constraints: BoxConstraints(
        maxHeight: 150.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: IconButton(
             icon: Icon(Icons.insert_emoticon),
             color: Colors.blue,
             onPressed: () {},
             ),
          ),
          Expanded(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.multiline,
              autofocus: false,
              decoration: InputDecoration(
                focusColor: Colors.white,
                hintText: 'Enter message here',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                filled: true,
                // fillColor: Colors.grey[200],
                fillColor: Colors.transparent,
                enabledBorder: Constants.border,
                disabledBorder: Constants.border,
                border: Constants.border,
                errorBorder: Constants.border,
                focusedErrorBorder: Constants.border,
                focusedBorder: Constants.border 
              ),
            onChanged: (v) {
              message = v;
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5, right: 5),
          child: RawMaterialButton(
            onPressed: () {},
            child: Icon(
              Icons.send,
              color: Colors.lightGreen[400],
            ),
            fillColor: Colors.blue,
            shape: CircleBorder(),
            elevation: 0.0,
          ),
          constraints: BoxConstraints(
            maxHeight: 40,
            minHeight: 40
          ),
        )

       ],
      ),
    );
  }
}