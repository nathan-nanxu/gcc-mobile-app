import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = "/aboutus";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Center(
        child: Text("About Us"),
      ),
    );
  }
}
