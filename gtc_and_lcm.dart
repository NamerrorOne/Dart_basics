//НОД и НОК

class MathAdvancedCalculator {
  const MathAdvancedCalculator();

  int getGreatestDivider(int a, int b) {
    if (a < b) {
      int temp = a;
      a = b;
      b = temp;
    }

    while (b != 0) {
      int temp = a;
      a = b;
      b = temp % b;
    }

    return a;
  }

  int getLowestMultiply(int a, int b) {
    //НОК = (a * b) / НОД(a, b)
    return (a * b) ~/ this.getGreatestDivider(a, b);
  }

  List<int> primeNumbers(int number) {
    final factors = <int>[];
    int divisor = 2;

    while (number > 1) {
      if (number % divisor == 0) {
        factors.add(divisor);
        number ~/= divisor;
      } else {
        divisor++;
      }
    }

    return factors;
  }
}
