//3651051541155 ภูวกร รุ่งปิติศุภากร

import 'dart:math';

abstract class Shape {
  void calculateArea();
}

abstract class Drawable {
  void draw(); // Method for drawing
}

class Circle implements Shape, Drawable { // วงกลม
  final int radius; // รัศมีเป็นจำนวนเต็ม

  Circle(this.radius);

  @override
  void calculateArea() {
    double area = pi * radius * radius; // คำนวณพื้นที่ของวงกลม pi * radius^2
    print("Area of Circle: ${area.toStringAsFixed(2)}"); // แสดงพื้นที่แบบทศนิยม 2 ตำแหน่ง
  }

  @override
  void draw() {
    print('Drawing Circle with radius: $radius'); // แสดงผลรัศมี
  }
}

class Rectangle implements Shape, Drawable { // สี่เหลี่ยมผืนผ้า
  final int width; // ความกว้างเป็นจำนวนเต็ม
  final int height; // ความสูงเป็นจำนวนเต็ม

  Rectangle(this.width, this.height);

  @override
  void calculateArea() {
    int area = width * height; // คำนวณพื้นที่ของสี่เหลี่ยมผืนผ้า
    print("Area of Rectangle: $area"); // แสดงพื้นที่เป็นจำนวนเต็ม
  }

  @override
  void draw() {
    print('Drawing Rectangle with width: $width and height: $height'); // แสดงผลความกว้างและความสูง
  }
}

void main() {
  // สร้างวัตถุ Circle และ Rectangle ด้วยค่าที่กำหนด
  var circle = Circle(5); // รัศมี 5
  var rectangle = Rectangle(10, 20); // ความกว้าง 10 และความสูง 20

  // เรียกใช้ draw() และ calculateArea() สำหรับ Circle
  circle.draw(); 
  circle.calculateArea();

  // เรียกใช้ draw() และ calculateArea() สำหรับ Rectangle
  rectangle.draw();
  rectangle.calculateArea();
}