import 'constant.dart';
import 'dart:math';

class Calculator {
  Calculator({required this.masukan});

  final String masukan;

  int calculateBinaryDecimal() {
    return int.parse(masukan, radix: 2);
  }

  int calculateDecimalBinary() {
    int masukanInt = int.parse(masukan);
    int bin = 0, i = 1;
    while (masukanInt > 0) {
      bin = bin + (masukanInt % 2) * i;
      masukanInt = (masukanInt / 2).floor();
      i = i * 10;
    }
    return bin;
  }
}
