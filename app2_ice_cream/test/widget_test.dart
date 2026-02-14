import 'package:app2_ice_cream/app/app.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Hello World tests", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(Container), findsOneWidget);
  });
}
