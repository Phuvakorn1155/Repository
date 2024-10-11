// Abstract class Drawable ที่มีเมธอด draw()
abstract class Drawable {
  void draw();
}

// คลาส Circle ที่สืบทอดจาก Drawable
class Circle implements Drawable {
  @override
  void draw() {
    print("Drawing a Circle");
  }
}

// คลาส Square ที่สืบทอดจาก Drawable
class Square implements Drawable {
  @override
  void draw() {
    print("Drawing a Square");
  }
}

// ฟังก์ชัน drawShape() ที่รับพารามิเตอร์เป็น Drawable
void drawShape(Drawable shape) {
  shape.draw();
}

void main(List<String> args) {
  drawShape(Circle());  // วาดวงกลม
  drawShape(Square());  // วาดสี่เหลี่ยม
}