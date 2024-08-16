class Prodart {
  int? _id;
  String? _name;
  double? _price;
  int? _balance;

  // Getter for _id
  int get id => _id!;

  // Setter for _id
  set id(int id) {
    this._id = id;
  }

  // Getter for _name
  String get name => _name!;

  // Setter for _name
  set name(String name) {
    this._name = name;
  }

  // Getter for _price
  double get price => _price!;

  // Setter for _price
  set price(double price) {
    this._price = price;
  }

  // Getter for _balance
  int get balance => _balance!;

  // Setter for _balance
  set balance(int balance) {
    this._balance = balance;
  }

  // Constructor (optional)
  Prodart({int? id, String? name, double? price, int? balance}) {
    this._id = id;
    this._name = name;
    this._price = price;
    this._balance = balance;
  }
}