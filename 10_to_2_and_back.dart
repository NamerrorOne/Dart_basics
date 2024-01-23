import 'dart:math';

class NumberSystem {
  const NumberSystem();

  String decimalToBinary(int decimal) {
    if (decimal == 0) return '0';

    String binary = '';
    while (decimal > 0) {
      binary = (decimal % 2).toString() + binary;
      decimal = decimal ~/ 2;
    }

    return binary;
  }

  int binaryToDecimal(String binary) {
    int decimal = 0;
    for (int i = 0; i < binary.length; i++) {
      int digital = int.parse(binary[i]);
      decimal += digital * pow(2, binary.length - i - 1).toInt();
    }
    return decimal;
  }
}
