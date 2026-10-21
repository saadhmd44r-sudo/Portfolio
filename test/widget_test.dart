import 'package:flutter_test/flutter_test.dart';

import 'package:landing_page/main.dart';

void main() {
  testWidgets('Home page shows intro text', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Im Saad'), findsOneWidget);
    expect(find.text('I Will Be An AI Engineer'), findsOneWidget);
  });
}
