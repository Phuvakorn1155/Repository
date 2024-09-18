//3651051541155 ภูวกร รุ่งปิติศุภากร

class Mammal {
  String species;

  Mammal(this.species);

 String get_species() {
    return species;
  }

  String make_sound() {
    return "-Grrr"; 
  }
}

class Dog extends Mammal {

  Dog() : super("Dog");

  @override
  String get_species() {
    return "Species: Dog";
  }

  @override
  String make_sound() {
    return "Animal Sound: -Woof! Woof!";
  }
}

class Cat extends Mammal {
  Cat() : super("Cat");
  @override
  String get_species() {
    return "Species: Cat";
  }

  @override
  String make_sound() {
    return "Animal Sound: -Meow";
  }
}

void main() {
  var regularAnimal = Mammal("Species: Regular Animal Sound:");
  print(regularAnimal.get_species());
  print(regularAnimal.make_sound());

  var dog = Dog();
  print(dog.get_species());
  print(dog.make_sound());

  var cat = Cat();
  print(cat.get_species());
  print(cat.make_sound());
}