//3651051541155 ภูวกร รุ่งปิติศุภากร

abstract class Insect{
void walk(){
  print('เดิน');
}

}

//Bird
abstract class Bird{ 
  void chirp() {
    print('chirp chirp');
  } //duplicate method
  void flutter(){ 
    print('fluttering'); }
  }

mixin Fluttering { 
  void flutter() {
     print('fluttering'); } }
abstract class AirborneInsect with Fluttering { 
  void buzz() { 
    print('buzzing annoyingly'); } }

  class Swallow extends Bird  {
     void doSwallowThing(){ 
      chirp();
      flutter();
      print('eating a mosquito');
     }
  }

mixin CanFly {
void fly(){
  print("Flying");
}

}

abstract class Airinsect extends Insect {
  void fly(){
  print('ปีน');
}

void blood(){
  print('เกิดโรค');
}
}
class Mosquito extends Airinsect {
void doMosquitoTing(){
walk();
fly();
blood();
print('ดูดเลือด');
}

void main(List<String>args){

//var Mosquito

}

}