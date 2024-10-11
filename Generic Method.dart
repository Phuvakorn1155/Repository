// ฟังก์ชัน showValue เพื่อแสดงชื่อและอายุ
void showValue(String name, int age) {
  print("Name: $name, Age: $age");
}

// ฟังก์ชัน addValue ใช้ Generic Type เพื่อคำนวณผลรวมของตัวเลข
T addValue<T extends num>(T x, T y) {
  return x + y as T;
}

void main(List<String> args) {
  // เรียกใช้ฟังก์ชัน showValue
  showValue('Tom', 30);
  showValue('Joe', 40);

  // showValue(44, "Man"); //ผิดพลาดของประเภทข้อมูล

  // เรียกใช้ฟังก์ชัน addValue และแสดงผลลัพธ์
  print('4 + 5 = ${addValue(4, 5)}');
  print('12 + 8.5 = ${addValue(12, 8.5)}');
  print('13 * 13 = ${addValue(13, 13)}');
  print('49 + 5.5 = ${addValue(49, 5.5)}');
}