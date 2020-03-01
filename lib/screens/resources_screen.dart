import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  static const routeName = "/resources";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resources"),
      ),
      body: Center(
        child: Text("Resources"),
      ),
    );
  }
}
