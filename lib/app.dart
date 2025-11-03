import 'package:flutter/cupertino.dart';
import 'package:rainwell/pages/about_page.dart';
import 'package:rainwell/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        AboutPage.route: (context) => const AboutPage(),
      },
      theme: CupertinoThemeData(),
      title: 'Rainwell',
    );
  }
}
