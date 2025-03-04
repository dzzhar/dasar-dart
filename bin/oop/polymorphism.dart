class Shape {
  void draw() {
    print('Menggambar bentuk');
  }
}

class Circle extends Shape {
  @override
  // polymorphism
  void draw() {
    // TODO: implement draw
    super.draw();
    print('Menggambar Lingkaran');
  }
}

void main() {
  Shape shape = Circle();
  shape.draw();
}
