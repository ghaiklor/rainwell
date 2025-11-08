import 'package:flutter/cupertino.dart';
import 'package:rainwell/pages/about_page.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
          backgroundColor: CupertinoColors.systemGroupedBackground,
          child: ListView(
            children: [
              CupertinoListSection.insetGrouped(
                children: [
                  CupertinoListTile.notched(
                    leading: Icon(CupertinoIcons.info),
                    title: Text('About'),
                    trailing: CupertinoListTileChevron(),
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => AboutPage()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
