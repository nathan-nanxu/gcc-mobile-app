import 'package:flutter/material.dart';
import '../original.dart';
import '../section_item.dart';
import '../screens/gcc_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              InkWell(
                onTap: () =>
                    Navigator.of(context).pushNamed(GccScreen.routeName),
                child: Container(
                  height: 300,
                  child: Center(
                    child: Text(
                      "GCC",
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://mk0gcctheme3sahe73gp.kinstacdn.com/wp-content/uploads/2019/06/prayer.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 200,
                  maxHeight: double.infinity,
                ),
                child: Container(
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: DUMMY_CATEGORIES
                        .map(
                          (sec) => SectionItem(
                            sec.title,
                            sec.imageUrl,
                            sec.routeName,
                          ),
                        )
                        .toList(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
