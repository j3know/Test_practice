class Counter {
  late int _count;
  late int _x;
  Counter() {
    _count = 0;
     _x = 0;
  }
  int get count => _count;

  void incrementCount() {
     _count = _count + 1 + _x++;
  }

  void decrementCount() {
    if (_count > 0) _count--;
  }

  void reset() {
    _count = 0;
  }
}
