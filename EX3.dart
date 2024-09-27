abstract class ElectricAppliance{
  void on(); void off(); void work();


}
//ต้องประกาศเป็นแอบสแตรกคลาส
//เพราะทําการโอเวอร์ไรด์แอบสแตรกเมธอดไม่ครบ

abstract class Fan1 extends ElectricAppliance{
  @override
  void on()
  { //implement on 
  } @override
  void off()
  {
    // implement off 
    } }
    class Fan2 extends Fan1{
      @override
void work(){
print ("Fan2 : work()");
}  
}
void main(List<String> args) {

var f2 = Fan2();
f2.on();
f2.off();
f2.work();
}