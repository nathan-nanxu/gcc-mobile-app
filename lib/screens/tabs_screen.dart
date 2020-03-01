import './events_screen.dart';
import './give_screen.dart';
import './testimonial_screen.dart';

import './home_screen.dart';
import './sermons_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    HomeScreen(),
    SermonsScreen(),
    EventsScreen(),
    GiveScreen(),
    TestimoinalsScreen(true),
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Glory City Church"),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            title: Text("Sermons"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("Events"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Give"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze),
            title: Text("More"),
          ),
        ],
      ),
    );
  }
}
