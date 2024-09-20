class Student {
  // Properties ของนักเรียน
  int id;
  String name;
  int age;

  // Static property สำหรับชื่อมหาวิทยาลัย
  static String universityName = "NANA School";

  // Constructor ของ Student
  Student(this.id, this.name, this.age);

  // เมธอดแสดงข้อมูลของนักเรียน
  void display() {
    print("Id: $id");
    print("Name: $name");
    print("Age: $age");
    print("University Name: $universityName");
  }
}

void main() {
  // สร้างวัตถุ Student
  Student s1 = Student(123, "John", 12);
  s1.display();

  Student s2 = Student(124, "Smith", 14);
  s2.display();

  // เปลี่ยนชื่อมหาวิทยาลัย
  Student.universityName = 'Borpit';
  
  // แสดงชื่อมหาวิทยาลัยใหม่
  print("Updated University Name: ${Student.universityName}");
}