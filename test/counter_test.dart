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
        'Given Counter class is increment when increment is calles then count = 1 ',
        () {
      counter.incrementCount();
      expect(counter.count, 1);
    });

     test(
        'Given Counter class is increment when increment is calles then count = 1 , 3 ,6 , 10 ',
        () {
      counter.incrementCount();
      expect(counter.count, 1);

         counter.incrementCount();
      expect(counter.count, 3);

         counter.incrementCount();
      expect(counter.count, 6);

         counter.incrementCount();
      expect(counter.count, 10);
    });



       test(
        'Given Counter class is instantiated when decrement count is called and when count is zero then decrement will stop, then counter = 0',
        () {
      counter.decrementCount();
      expect(counter.count, 0);
    });

    test(
        'Given Counter class is instantiated when Increment is called and reset is called, then counter = 0',
        () {
      counter.incrementCount();
      counter.reset();
      expect(counter.count, 0 );
    });
  });
}
