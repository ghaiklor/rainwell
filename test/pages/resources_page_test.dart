import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rainwell/pages/resources_page.dart';

void main() {
  group('Resources Page', () {
    testWidgets('should have a temp placeholder for now', (tester) async {
      await tester.pumpWidget(CupertinoApp(home: ResourcesPage()));

      expect(find.text('Resources Page'), findsOneWidget);
    });
  });
}
