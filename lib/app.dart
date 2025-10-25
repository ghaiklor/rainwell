import 'package:flutter/cupertino.dart';
import 'package:rainwell/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      initialRoute: '/',
      routes: {'/': (context) => HomePage()},
      theme: CupertinoThemeData(),
      title: 'Rainwell',
    );
  }
}
