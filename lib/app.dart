import 'package:flutter/cupertino.dart';
import 'package:rainwell/pages/about_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      initialRoute: AboutPage.route,
      routes: {
        '/': (context) => const AboutPage(),
        AboutPage.route: (context) => const AboutPage(),
      },
      theme: CupertinoThemeData(),
      title: 'Rainwell',
    );
  }
}
