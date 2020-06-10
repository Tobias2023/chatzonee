import 'package:chatzonee/screens/chat_room/chat_room_screen.dart';
import 'package:chatzonee/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chatZonee',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/chatRoom': (context) => ChatRoomScreen()
      },
    );
  }
}

