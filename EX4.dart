abstract class ElectricAppliance {
  void draftBlueprint();
  void interior();
  void construct();
}

// This is the Building interface
abstract class Building {
  void draftBlueprint();
  void interior();
  void construct();
}

class House implements Building {
  @override
  void construct() {
    print('House: construct()');
  }

  @override
  void draftBlueprint() {
    print('House: draftBlueprint()');
  }

  @override
  void interior() {
    print('House: interior()');
  }
}

void main() {
  // Create an instance of House and call its methods
  var myHouse = House();
  myHouse.draftBlueprint();
  myHouse.construct();
  myHouse.interior();

  // Print using the printBuilding function
  printBuilding(myHouse);
}

void printBuilding(Building build) {
  build.draftBlueprint();
  build.construct();
  build.interior();
}