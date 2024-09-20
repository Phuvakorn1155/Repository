class SimpleInterest {
static double calculateInterest (double principal, double rate, double time) {
  return (principal *rate* time) / 100;
}
}

void main() {
  double interest = SimpleInterest.calculateInterest(1000,2,2);
  print("The simple interest is $interest");
}