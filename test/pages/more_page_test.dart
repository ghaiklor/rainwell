import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainwell/pages/more_page.dart';

void main() {
  group('More Page', () {
    testWidgets('should have a tile to navigate to About', (tester) async {
      await tester.pumpWidget(CupertinoApp(home: MorePage()));

      expect(find.widgetWithText(CupertinoListTile, 'About'), findsOneWidget);
    });

    testWidgets('should navigate to About page', (tester) async {
      await tester.pumpWidget(CupertinoApp(home: MorePage()));
      await tester.tap(find.widgetWithText(CupertinoListTile, 'About'));
      await tester.pumpAndSettle();

      expect(find.text('Rainwell'), findsOneWidget);
      expect(find.text('Created by Eugene Obrezkov'), findsOneWidget);
    });

    testWidgets('should get back to More page from About', (tester) async {
      await tester.pumpWidget(CupertinoApp(home: MorePage()));
      await tester.tap(find.widgetWithText(CupertinoListTile, 'About'));
      await tester.pumpAndSettle();
      await tester.tap(find.backButton());
      await tester.pumpAndSettle();

      expect(find.widgetWithText(CupertinoListTile, 'About'), findsOneWidget);
    });
  });
}
