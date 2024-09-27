abstract class Plane {
  void takeoff() => print("Plane: takeoff()");
  void landing() => print("Plane: landing()"); // เมธอดปกติ
  void fly();
void moveForward(int meters); //แอบสแตรกเมธอด ไม่ต้องกําหนดการทํางาน
} //ชื่อคลาสและแอบสแตรกเมธอดในภาพ UML จะมีลักษณะแบบอักษรเป็นตัวเอียง
class Boeing extends Plane {
  @override // ทําการโอเวอร์ไรด์
  void fly() {
    print("Boeing: fly()");
  }

  @override
  void moveForward(int meters) {
    print("Boeing: moveForward($meters meters)");
  }
}
//คลาส Boeing ต้องทําการโอเวอร์ไรด์
//เมธอดชื่อ fly(), moveforward(int) ของคลาส Plane
void main() {
  Boeing boeing = Boeing();
  boeing.takeoff();
  boeing.fly();
  boeing.moveForward(100);
  boeing.landing();
}