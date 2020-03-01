import 'package:flutter/material.dart';

class Section {
  final String id;
  final String title;
  final String imageUrl;
  final String routeName;

  Section({
    @required this.id,
    @required this.title,
    @required this.routeName,
    @required this.imageUrl,
  });
}
