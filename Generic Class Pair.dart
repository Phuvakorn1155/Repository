//คลาสสามารถเก็บข้อมูลสองค่าที่อาจจะเป็นคนละประเภทกันได้
//(ประเภทแรก คือ T และประเภทที่สองคือ U)
class Pair<T, U> {
  T first;
  U second;

  // Constructor ที่รับค่าเริ่มต้นสองค่าคือ first และ second
  Pair(this.first, this.second);

  // Method swap() ที่จะทําการสลับค่าของ first และ scound
  void swap() {
    var temp = first;
    first = second as T;
    second = temp as U;
  }

  // Method displayPair() เพื่อแสดงค่าทั้งสองในรูปแบบ
  void displayPair() {
    print('First: $first, Second: $second');
  }
}

void main() {
  // ทดสอบกับค่าประเภท int
  var pair1 = Pair<int, int>(45, 50);
  pair1.displayPair(); 
  pair1.swap();
  pair1.displayPair(); 

  // ทดสอบกับค่าประเภท double และ double
  var pair2 = Pair<double, double>(3.14, 42);
  pair2.displayPair(); 
    pair2.swap();
  pair2.displayPair(); 
}
