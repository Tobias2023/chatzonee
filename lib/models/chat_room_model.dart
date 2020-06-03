import 'package:chatzonee/models/message_model.dart';
import 'package:chatzonee/models/user_model.dart';

class ChatRoom {
  final User sender;
  final List<Message> messages;

  ChatRoom({this.sender, this.messages});

}