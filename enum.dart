enum Gender { Male, Female, Other }

class Person {
  String? firstName;
  String? lastName;
  Gender? gender;

  // Constructor ที่ใช้ named parameters เพื่อความชัดเจน
  Person({this.firstName, this.lastName, this.gender});

  void display() {
    print("First Name: $firstName");
    print("Last Name: $lastName");

    // ใช้ .split('.').last เพื่อแสดงค่า enum โดยไม่รวมชื่อ enum class
    print("Gender: ${gender?.toString().split('.').last}");
  }
}

void main() {
  // สร้าง object จากคลาส Person พร้อมทดสอบการแสดงผล
  var person1 = Person(firstName: "John", lastName: "Doe", gender: Gender.Male);
  var person2 = Person(firstName: "Jane", lastName: "Smith", gender: Gender.Female);
  var person3 = Person(firstName: "Alex", lastName: "Kim", gender: Gender.Other);

  person1.display();
  person2.display();
  person3.display();
}