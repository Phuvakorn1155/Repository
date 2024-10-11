// ฟังก์ชัน Person เพื่อแสดงชื่อและอายุ
void Person(String name, int age) {
  print("Name: $name, Age: $age");
}
// ฟังก์ชัน Product เพื่อแสดงชื่อProductและราคาProduct
void Product (String name, double price) {
  print("Name: $name, Price: $price");
}
//สร้าง Generic Method ชื่อ printItem<T>
//รับอากิวเมนต์เป็น objects ที่implement Printable และเรียกใช้ method printData()
 //ทดลองใช้ printItem<T> กับ Object ของทั้ง Person และ Product
 void main(List<String> args) {
  // เรียกใช้ฟังก์ชัน Person
  Person('John', 25);
  // เรียกใช้ฟังก์ชัน Product
  Product('Laptop', 1500.0);
}