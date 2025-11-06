import 'package:flutter/cupertino.dart';
import 'package:rainwell/pages/game_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: const GamePage(),
      theme: CupertinoThemeData(),
      title: 'Rainwell',
    );
  }
}
