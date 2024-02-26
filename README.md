# Counter Test

This repository contains a Flutter test case for the `Counter` class.

## Table of Contents

- [Overview](#overview)
- [Test Scenario](#test-scenario)
- [Running the Test](#running-the-test)

## Overview

The test case is designed to ensure the correctness of the `Counter` class, which is responsible for counting and incrementing.

## Test Scenario

### 1. Given Counter class, when instantiated then count = 0

- **Given:** The `Counter` class.
- **When:** The `Counter` class is instantiated.
- **Then:** The initial count should be 0.

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestexample/counter.dart';

void main() {
  test('Given Counter class, when instantiated then count = 0', () {
    // Arrange
    Counter counter;

    // Act
    counter = Counter();
    int count = counter.count;

    // Assert
    expect(count, 0);
  });
}


### 2. Given Counter class is incremented, when `incrementCount` is called, then count = 1

- **Given:** An instance of the `Counter` class.
- **When:** The `incrementCount` method is called.
- **Then:** The count should be incremented to 1.

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestexample/counter.dart';

void main() {
  // Previous test scenario...

  test('Given Counter class is incremented, when incrementCount is called then count = 1', () {
    // Arrange
    Counter counter = Counter();

    // Act
    counter.incrementCount();

    // Assert
    expect(counter.count, 1);
  });
}
