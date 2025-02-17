import 'package:flutter_test/flutter_test.dart';

int add(int a, int b) {
  return a + b;
}

void main() {
  test(" Test add function", () {
    expect(add(2, 8), 10);
  });
}
