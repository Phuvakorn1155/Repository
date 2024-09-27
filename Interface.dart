abstract class Building {
  void draftBlueprint();
  void interior();
  void construct();
}

// Assuming that you want to name the class House that implements Building
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
  printBuilding(House());
}

void printBuilding(Building build) {
  build.draftBlueprint();
  build.construct();
  build.interior();
}