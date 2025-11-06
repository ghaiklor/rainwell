import 'package:flutter/cupertino.dart';
import 'package:rainwell/pages/more_page.dart';
import 'package:rainwell/pages/resources_page.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.drop_triangle),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipsis),
            label: 'More',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        // TODO: figure out how this can be implemented more maintainable
        switch (index) {
          case 0:
            return ResourcesPage();
          case 1:
            return MorePage();
          default:
            return ResourcesPage();
        }
      },
    );
  }
}
