extension NthRootExtension on num {
  num nthRoot(int n) {
    if (this < 0 && n % 2 == 0) {
      throw ArgumentError('Cannot calculate even root of a negative number');
    }

    num x = this.abs();
    num y = 1;
    num epsilon = 0.0000001; // Погрешность

    while ((x - y).abs() > epsilon) {
      x = (1 / n) * ((n - 1) * x + this / _pow(x, n - 1));
      y = (1 / n) * ((n - 1) * y + this / _pow(y, n - 1));
    }

    return x.toDouble();
  }

  num _pow(num base, int exponent) {
    num result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
}
