import 'package:church/screens/aboutus_screen.dart';
import 'package:flutter/material.dart';

import './screens/contactus_screen.dart';
import './screens/gcc_screen.dart';
import './screens/give_screen.dart';
import './screens/resources_screen.dart';
import './screens/sermons_screen.dart';
import './screens/testimonial_screen.dart';
import './screens/events_screen.dart';
import './screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Church',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
              title: TextStyle(
                color: Color.fromRGBO(250, 250, 250, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: HomeScreen(),
      routes: {
        "/": (ctx) => TabsScreen(),
        GccScreen.routeName: (ctx) => GccScreen(),
        AboutUsScreen.routeName: (ctx) => AboutUsScreen(),
        ContactusScreen.routeName: (ctx) => ContactusScreen(),
        EventsScreen.routeName: (ctx) => EventsScreen(),
        GiveScreen.routeName: (ctx) => GiveScreen(),
        ResourcesScreen.routeName: (ctx) => ResourcesScreen(),
        SermonsScreen.routeName: (ctx) => SermonsScreen(),
        TestimoinalsScreen.routeName: (ctx) => TestimoinalsScreen(false),
      },
    );
  }
}
