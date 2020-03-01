import 'package:flutter/material.dart';

class TestimoinalsScreen extends StatelessWidget {
  static const routeName = "/testimonials";

  final bool _isFromNav;

  TestimoinalsScreen(this._isFromNav);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isFromNav
          ? null
          : AppBar(
              title: Text("Testimonials"),
            ),
      body: Center(
        child: Text("Testimoinals"),
      ),
    );
  }
}
