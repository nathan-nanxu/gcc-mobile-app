import 'package:flutter/material.dart';

class ContactusScreen extends StatelessWidget {
  static const routeName = "/contactus";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Center(
        child: Text("Contact Us"),
      ),
    );
  }
}
