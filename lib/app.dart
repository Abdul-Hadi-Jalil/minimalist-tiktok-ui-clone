import 'package:flutter/material.dart';
import 'package:minmalist_tiktok_ui_clone/screens/home_screen.dart';
import 'package:minmalist_tiktok_ui_clone/screens/inbox_screen.dart';
import 'package:minmalist_tiktok_ui_clone/screens/plus_screen.dart';
import 'package:minmalist_tiktok_ui_clone/screens/profile_screen.dart';
import 'package:minmalist_tiktok_ui_clone/screens/search_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    PlusScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];

  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: navigateBottomNavBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_rounded),
            label: "Inbox",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
