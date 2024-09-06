  class Vehicle { // (Super class)
 String? _brand;
  String? _model; // Getter method เพื่อ get ค่า

  Vehicle(this.brand, this.model);

void drive(){
print("Vehicle is driving.");
}
  }

  class Car extends Vehicle{ // (Sub class)
  int? _numOfDoors;
  var Car = Car
 Car(String? brand, String? model, this.numOfDoors) : super(brand, model);

  void drive() {
   print("Car is driving.”: ${Car.getnumOfDoors()}");
  print("Car is driving.”: ${Car.getoverride()}"); 
  }
  }


void main(List<String> args) {

 var Car myCar = Car(" FORD", "CV", 4);

  // Call the drive method
  myCar.drive();

  // Display the object's properties
  print("Brand: ${myCar.brand}"); //1
  print("Model: ${myCar.model}"); //2
  print("NumOfDoors: ${myCar.numOfDoors}"); //3
}