// Import จำเป็น
// คลาส abstract สำหรับ shape
abstract class MyShape {
  void draw();
}

// คลาส Shape สืบทอดจาก MyShape
class Shape extends MyShape {
  @override
  void draw() => print("Drawing shape");
}

// คลาส Circle สืบทอดจาก MyShape
class Circle extends MyShape {
  @override
  void draw() => print("Drawing circle");
}

// คลาส Box ใช้ Generic Type สำหรับ object ที่สืบทอดจาก MyShape
class Box<T extends MyShape> {
  T value;

  Box(this.value);

  // เมธอดเพื่อวาดรูปจาก object ที่เก็บอยู่ใน Box
  void drawShape() => value.draw();
}

void main(List<String> args) {
  // สร้าง object Box ของ Circle และ Shape
  var bCircle = Box<Circle>(Circle());
  var bShape = Box<Shape>(Shape());

  // เรียกใช้เมธอด drawShape() สำหรับแต่ละ object
  bCircle.drawShape(); // Output: Drawing circle
  bShape.drawShape();  // Output: Drawing shape
}
