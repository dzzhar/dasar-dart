abstract class Shape {
  Shape clone();
  void draw();
}

class Circle implements Shape {
  final int radius;
  Circle(this.radius);

  @override
  Circle clone() => Circle(radius);

  @override
  void draw() => print('Drawing Circle with Radius $radius');
}

void main() {
  var original = Circle(10);
  var copy = original.clone();

  original.draw();
  copy.draw();
}
