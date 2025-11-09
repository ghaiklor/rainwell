import 'package:flutter/cupertino.dart';
import 'package:rainwell/pages/more_page.dart';
import 'package:rainwell/pages/resources_page.dart';

enum GameTab {
  resources(CupertinoIcons.drop_triangle, 'Resources', ResourcesPage()),
  more(CupertinoIcons.ellipsis, 'More', MorePage());

  final IconData icon;
  final String label;
  final Widget page;

  const GameTab(this.icon, this.label, this.page);
}

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: GameTab.values
            .map(
              (tab) => BottomNavigationBarItem(
                icon: Icon(tab.icon),
                label: tab.label,
              ),
            )
            .toList(),
      ),
      tabBuilder: (context, index) => GameTab.values[index].page,
    );
  }
}
