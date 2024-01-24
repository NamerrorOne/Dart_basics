import 'dart:math';

class Point {
  Point({required this.x, required this.y, required this.z});

  double x;
  double y;
  double z;

  double distanceTo(Point anotherPoint) {
    double dx = this.x - anotherPoint.x;
    double dy = this.y - anotherPoint.y;
    double dz = this.z - anotherPoint.z;

    double sumOfSquares = dx * dx + dy * dy + dz * dz;
    //если значение отрицательное и надо брать по модулю
    return sumOfSquares > 0 ? sqrt(sumOfSquares) : sqrt(sumOfSquares.abs());
  }

  static double calculateArea(Point p1, Point p2, Point p3) {
    double a = p1.distanceTo(p2);
    double b = p2.distanceTo(p3);
    double c = p3.distanceTo(p1);
    double s = (a + b + c) / 2;
    return sqrt((s * (s - a) * (s - b) * (s - c)).abs());
  }
}
