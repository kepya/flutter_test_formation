import 'package:flutter_test_demo/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter', () {
    test('Initial value is 0', () {
      final counter = Counter();
      expect(counter.count, 0);
    });

    test('Increment increases count by 1', () {
      final counter = Counter();
      counter.increment();
      expect(counter.count, 1);
    });

    test('Decrement decreases count by 1', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.count, -1);
    });
  });
}