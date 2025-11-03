import 'package:flutter/cupertino.dart';

class AboutPage extends StatelessWidget {
  static const String route = '/about';

  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CupertinoTheme.of(context);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('About')),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Rainwell', style: theme.textTheme.navLargeTitleTextStyle),
            Text(
              'Created by Eugene Obrezkov',
              style: theme.textTheme.textStyle.copyWith(
                color: CupertinoColors.systemGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
