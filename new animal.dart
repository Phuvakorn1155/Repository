class Animal{

Animal(this.name, this.age);
String? name;
int? age;
Animal.fromcj(Map<String,dynamic>cj){
  cj.forEach((n,a){
name = n;
age = a;
});
}

Animal.fromcjString(String cjString){
Map<String,dynamic> cj = cjdecode (cjString);
  cj.forEach((n,a){
name = n;
age = a;
});
}
String toString()=> 'Name: ${name} Age: ${age}';
}

void main(List <String> args){
var ma = Animal('B', 2);
var cat = Animal.fromcj({ 'Firth':3, 'Rat':2, 'Bat':1,});
var dog = Animal.fromcjString('{"Big":4,"Max":2}');

print(ma);
print(cat);
print(dog);

print('Cat animal: ${cat.name}');

}