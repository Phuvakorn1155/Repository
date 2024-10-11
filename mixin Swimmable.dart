mixin Swimmable {
void swim() => print('Swimming');
} 

mixin Walkable {
  void walk() => print('Walking');
}
class Animal {}
class Dog extends Animal with Walkable {

}
class Fish extends Animal with Swimmable {

}

void main(){
Dog dog = Dog();
dog.walk(); // Output: Walking 
Fish fish = Fish();
fish.swim(); // Output: Swimming
}