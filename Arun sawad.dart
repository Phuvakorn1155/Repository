// สร้าง interface Greetings
abstract class Greetings {
  void thai();
  void english();
  void japan();
}
// สร้างคลาส NotYetGreet ที่ implements interface Greetings
class NotYetGreet implements Greetings {
  @override
  void thai() {
    print('Arun sawad'); // แสดงผลภาษาไทย
  }
  @override
  void english() {
    print('Good morning'); // แสดงผลภาษาอังกฤษ
  }
  @override
  void japan() {
    print('Ohiyo'); // แสดงผลภาษาญี่ปุ่น
  }
}
// สร้างคลาส Greet ที่สืบทอดมาจากคลาส NotYetGreet
class Greet extends NotYetGreet {
  // ไม่ต้องเขียนอะไรเพิ่มเนื่องจากเราใช้ฟังก์ชันจาก NotYetGreet ได้เลย
}
void main() {
  // สร้างออบเจกต์ของคลาส Greet
  Greet greet = Greet();
  // เรียกใช้เมธอดทั้ง 3 เมธอด
  greet.thai();        // Output: Arun sawad
  greet.english();     // Output: Good morning
  greet.japan();       // Output: Ohiyo
}