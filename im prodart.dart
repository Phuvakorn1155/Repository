import 'prodart.dart';

void main(List <String> args){
var myproduct = Prodart();
//myproduct.id = 011;
myproduct.id = 011;
myproduct.name = 'Yolo';
myproduct.price = 15;
myproduct.balance = 4;

print('Id: ${myproduct.id} ');
print('name: ${myproduct.name} ');
print('price: ${myproduct.price} ');
print('balance: ${myproduct.balance} ');
}