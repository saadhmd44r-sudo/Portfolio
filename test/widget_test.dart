import 'package:flutter_test/flutter_test.dart';

import 'package:landing_page/main.dart';

void main() {
  testWidgets('Home page shows intro text and work button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    // Ntsennaw l'animations ysaliw.
    await tester.pump(const Duration(seconds: 2));

    expect(find.text('Saad Hmaidi'), findsOneWidget);
    expect(find.text('AI Engineering Student'), findsOneWidget);
    expect(find.text('View my work'), findsOneWidget);
    expect(find.text('Portfolio'), findsOneWidget);
  });
}
