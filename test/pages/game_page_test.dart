import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainwell/pages/game_page.dart';

void main() {
  group('Game Page', () {
    testWidgets('should render the correct tab bar', (tester) async {
      await tester.pumpWidget(CupertinoApp(home: GamePage()));

      expect(find.widgetWithText(CupertinoTabBar, 'Resources'), findsOneWidget);
      expect(find.widgetWithText(CupertinoTabBar, 'More'), findsOneWidget);
    });

    testWidgets('should navigate to More page when tapped', (tester) async {
      await tester.pumpWidget(CupertinoApp(home: GamePage()));
      await tester.tap(find.widgetWithText(CupertinoTabBar, 'More'));
      await tester.pumpAndSettle();

      expect(find.widgetWithText(CupertinoListTile, 'About'), findsOneWidget);
    });
  });
}
