class SelectorModel {
  List<String> images = [
    'assets/p1.jpeg',
    'assets/p2.jpeg',
    'assets/p3.jpeg',
    'assets/p4.jpeg',
  ];
  int selectedIndex = 0;

  String get currentImage => images[selectedIndex];

  void select(int index) {
    selectedIndex = index;
  }
}
