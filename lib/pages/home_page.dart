import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Rainwell')),
      child: Center(child: Text('Home Page')),
    );
  }
}
