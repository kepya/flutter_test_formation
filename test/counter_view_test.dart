import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_demo/counter_view.dart';

void main() {
  testWidgets('Counter view displays and updates value',
      (WidgetTester tester) async {
    await tester.pumpWidget(const CounterView());

    expect(find.byKey(const Key('counterText')), findsOneWidget);
    expect(find.text('Count: 0'), findsOneWidget);

    await tester.tap(find.byKey(const Key('incrementButton')));
    await tester.pump();

    expect(find.text('Count: 1'), findsOneWidget);

    await tester.tap(find.byKey(const Key('decrementButton')));
    await tester.pump();

    expect(find.text('Count: 0'), findsOneWidget);
  });
}