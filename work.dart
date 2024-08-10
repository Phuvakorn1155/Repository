import 'dart:ffi';

class Laptop{
String? id ;
String? name ;
double? ram ; 
Laptop({this.id = "01", this.name = 'HUAWEI MateBook X Pro' , this.ram: 16});

Laptop(this.id,this.name ,this.ram );
void display(){
   print('ID : $id');
  print('Name : ${this.name}');
  print('Ram : $ram');
  }
}

class House{
String? id ;
String? name ;
double? price ;

House({this.id = "0001", this.name = 'Knebworth House' , this.price = 1665450});

void display(){
  print('ID : $id') ;
  print('Name : $name');
  print('Price : $price');
}
}

class Car{
  //property
  String? brand ;
  String? color ;
  double? price ;
Car({this.brand = "Honda", this.color = 'Morning Mist Blue Metallic' , this.price: 166000});

Car(this.brand,this.color,[this.price]);

void setPrice(double price){
  this.price = price;
}
void display(){
  print('Brand : $brand');
  print('Color : $color ');
  print('Price : $price');
}
}