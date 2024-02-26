import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestexample/counter.dart';

main() {
// Given When Then

  test('Given Counter class, when instantiated then count = 0', () {
    //arrange
    Counter counter;
    //act
    counter = Counter();
    int count = counter.count;
    //assert
    expect(count, 0);
  });
  test(
      'Given Counter class is increment when increment is calles then count = 1',
      () {
    Counter counter = Counter();
    counter.incrementCount();
    expect(counter.count, 1);
  });
}
