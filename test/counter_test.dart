import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestexample/counter.dart';

main() {
  // Given When Then
  group('Counter class:', () {
    late Counter counter;
    setUp(() => counter = Counter());

    test('Given Counter class, when instantiated then count = 0', () {
      int count = counter.count;
      expect(count, 0);
    });
    test(
        'Given Counter class is increment when increment is calles then count = 1',
        () {
      counter.incrementCount();
      expect(counter.count, 1);
    });

    test(
        'Given Counter class is instantiated when dicrement count is called, then counter = -1',
        () {
      counter.decrementCount();
      expect(counter.count, -1);
    });
    test(
        'Given Counter class is instantiated when Increment is called and reset is called, then counter = 0',
        () {
      counter.incrementCount();
      counter.reset();
      expect(counter.count, 0);
    });
  });
}
