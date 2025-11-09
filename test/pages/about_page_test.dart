import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainwell/pages/about_page.dart';

void main() {
  group('About Page', () {
    testWidgets('should contain the title and author', (tester) async {
      await tester.pumpWidget(CupertinoApp(home: AboutPage()));

      expect(find.text('Rainwell'), findsOneWidget);
      expect(find.text('Created by Eugene Obrezkov'), findsOneWidget);
    });

    testWidgets('should contain a navigation bar', (tester) async {
      await tester.pumpWidget(CupertinoApp(home: AboutPage()));

      expect(find.byType(CupertinoNavigationBar), findsOneWidget);
      expect(
        find.widgetWithText(CupertinoNavigationBar, 'About'),
        findsOneWidget,
      );
    });
  });
}
