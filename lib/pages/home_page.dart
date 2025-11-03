import 'package:flutter/cupertino.dart';
import 'package:rainwell/pages/about_page.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';

  const HomePage({super.key});

  void _showMiscellaneousMenu(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: Text('Miscellaneous Menu'),
        message: Text('Just a place to hold non-vital things'),
        actions: [
          CupertinoActionSheetAction(
            child: Text('About'),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, AboutPage.route);
            },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () => Navigator.pop(context),
          child: Text('Cancel'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Rainwell'),
        trailing: CupertinoButton(
          onPressed: () => _showMiscellaneousMenu(context),
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.ellipsis_vertical),
        ),
      ),
      child: Center(child: Text('Home Page')),
    );
  }
}
