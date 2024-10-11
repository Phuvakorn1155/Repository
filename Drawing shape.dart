// คลาส Shape
class Shape {
  void draw() => print('Drawing shape');
}

// คลาส Circle ที่สืบทอดจาก Shape
class Circle extends Shape {
  @override
  void draw() => print('Drawing circle');
}

// คลาส Box ที่ใช้ Generic Type เพื่อจัดเก็บ object
class Box<T> {
  T? _value;

  // เมธอดเพื่อเพิ่มค่าให้กับ Box
  void addValue(T value) {
    _value = value;
  }

  // เมธอดเพื่อดึงค่าจาก Box
  T? getValue() {
    return _value;
  }
}

void main(List<String> args) {
  // สร้างวัตถุ Box ที่เก็บชนิดข้อมูล Shape
  Box<Shape> box = Box<Shape>();

  // สร้างวัตถุ Circle
  var c = Circle();

  // เพิ่ม object Circle ในกล่อง
  box.addValue(c);
  box.getValue()?.draw();

  // เพิ่ม instance Shape ในกล่อง
  box.addValue(Shape());
  box.getValue()?.draw();
}