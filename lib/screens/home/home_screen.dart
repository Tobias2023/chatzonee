import 'package:flutter/material.dart';
import 'package:chatzonee/screens/chat/chat_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {  
  int _page = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(45),
          topLeft: Radius.circular(45),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: _page,
          onTap: (idx) {
            _pageController.jumpToPage(idx);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message, 
                color: Colors.amber,
                ),
              activeIcon: Icon(
                Icons.message,
                color: Colors.grey
                ),
              title: Container(
                height: 0.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications, 
                color: Colors.grey
                ),
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.grey
                ),
              title: Container(
                height: 0.0,
              ),
            ),

            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle, 
                color: Colors.grey
                ),
              activeIcon: Icon(
                Icons.account_circle,
                color: Colors.grey
                ),
              title: Container(
                height: 0.0,
              ),
            ),
          ]
        )

      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (idx) {
          setState(() {
            _page = idx;
          });
        },
        children: <Widget>[
          ChatScreen(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}


// Check on Colors lib not show colors as expected