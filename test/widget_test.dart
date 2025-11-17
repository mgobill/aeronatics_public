// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:aeronatics_public/main.dart';

void main() {
  testWidgets('Landing page renders Aeronatics hero content',
      (WidgetTester tester) async {
    await tester.pumpWidget(const AeronaticsApp());

    expect(
      find.text('Flight logging, reimagined for modern aviators.'),
      findsOneWidget,
    );
    expect(find.text('Mission-ready features'), findsOneWidget);
    expect(
      find.textContaining('Download on the App Store'),
      findsOneWidget,
    );
  });
}
