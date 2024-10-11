// คลาส Box ที่ใช้ Generic Type โดยต้องเป็นชนิด num เท่านั้น
class Box<T extends num> {
  T? _value;

  // Constructor เพื่อกำหนดค่าเริ่มต้นให้กับ Box
  Box(this._value);

  // Method เพื่อคำนวณค่าของ value
  T? calC() {
    return null;
  }

  // Method เพื่อแสดงค่าของ value
  void show() {
    print("THIS: $_value");
  }
}

void main(List<String> args) {
  // สร้าง object ของ Box ที่เก็บค่า int
  var b1 = Box<int>(20);

  // แสดงค่า value ในกล่อง
  b1.show();

  // คำนวณและแสดงค่าของ value * value
  print("Calculated value: ${b1.calC()}");
}
