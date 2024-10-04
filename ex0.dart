abstract class Interface1 {

  double inf();
  int inf1(int a);
  void inf2();
  void inf3();
}

class MyClass implements Interface1 {
  @override
  double inf() {
    return 2.0; 
  }

  @override
  int inf1(int a) {
    return a + 1; // Simple example
  }

  @override
  void inf2() {
    print("inf2 method executed.");
  }

  @override
  void inf3() {
    print("inf3 method executed.");
  }
}

abstract class Q {
  int a;

  Q(this.a);

  void Q1() {
    print("Q1 method from Q class.");
  }

  void Q2() {
    print("Q2 method from Q class.");
  }

  void Q3() {
    print("Q3 method from Q class.");
  }
}

class W extends Q {
  W(int a) : super(a); // Constructor for W

  @override
  void Q1() {
    super.Q1(); // Call the superclass implementation
    print("W's implementation of Q1.");
  }

  @override
  void Q2() {
    print("W's implementation of Q2.");
  }
}

void main() {
  MyClass myClass = MyClass();
  print(myClass.inf());      // Outputs: 2.0
  print(myClass.inf1(5));    // Outputs: 6
  myClass.inf2();            // Outputs: inf2 method executed.
  myClass.inf3();            // Outputs: inf3 method executed.

  W wInstance = W(10);
  wInstance.Q1();            // Outputs Q1 method messages.
  wInstance.Q2();            // Outputs W's implementation of Q2.
}