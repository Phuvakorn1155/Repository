abstract class Shape {
  int dim1;
  int dim2;

  Shape(this.dim1, this.dim2); // Constructor

  void area(); // Abstract method
}

class Rectangle extends Shape {
  Rectangle(int width, int height) : super(width, height);

  @override
  void area() {
    double areaValue = 0.5 *dim1*dim2;
    print('Area of Rectangle: $areaValue');
  }
}

class Triangle extends Shape {
  Triangle(int base, int height) : super(base, height);

  @override
  void area() {
    double areaValue = 0.5 * dim1 * dim2;
    print('Area of Triangle: $areaValue');
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 40);
  rectangle.area(); // Output: Area of Rectangle: 100.0

  Triangle triangle = Triangle(10, 20);
  triangle.area(); // Output: Area of Triangle: 100.0
}