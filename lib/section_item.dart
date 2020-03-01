import 'package:flutter/material.dart';

class SectionItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String routeName;

  SectionItem(this.title, this.imageUrl, this.routeName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(routeName),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
