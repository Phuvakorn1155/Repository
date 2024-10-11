// คลาส Box ที่ใช้ Generic Type
class Box<T> {
  T? _value;

  // เมธอดเพื่อเพิ่มค่าให้กับ Box
  void addValue(T v) {
    _value = v;
  }

  // เมธอดเพื่อดึงค่าจาก Box
  T? getValue() {
    return _value;
  }
}

// คลาส Shape
class Shape {
  void draw() => print('Drawing shape');
}

// คลาส Circle ที่สืบทอดจาก Shape
class Circle extends Shape {
  @override
  void draw() => print('Drawing circle');
}

void main(List<String> args) {
  // การสร้างวัตถุ Box ด้วยประเภทข้อมูลต่าง ๆ
  var b0 = Box<int>();
  var b1 = Box<String>();
  var b2 = Box<double>();
  var b3 = Box<Shape>();
  var b4 = Box<Circle>();

  // เพิ่มค่าให้กับ Box
  b0.addValue(20);
  b1.addValue("20");
  b2.addValue(30.0);
  b3.addValue(Shape());
  b4.addValue(Circle());

  // แสดงค่าจากแต่ละ Box
  print('b0 = ${b0.getValue()}');
  print('b1 = ${b1.getValue()}');
  print('b2 = ${b2.getValue()}');

  // เรียกใช้เมธอด draw() จาก Shape และ Circle
  b3.getValue()?.draw();
  b4.getValue()?.draw();

}