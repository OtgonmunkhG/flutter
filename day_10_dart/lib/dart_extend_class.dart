// class extention (inheritance)

class Shape {
  int size = 0;
  int length = 0;
  int height = 0;

  Shape({required int size, required int length, required int height}) {
    this.height = height;
    this.length = length;
    this.size = size;
  }

  void showInfo() {
    print("I'm a shape");
  }
}

class Rectangle extends Shape {
  Rectangle(
      {required super.size, required super.length, required super.height});

  @override
  void showInfo() {
    print("I'm a rectangle");
  }
}

class Animal {
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  String name = "";
  String type = "";

  void makeNoise() {
    print("Animal roaring");
  }
}

class Pig extends Animal {
  Pig({required super.name, required super.type});

  @override
  void makeNoise() {
    // TODO: implement makeNoise
    super.makeNoise();
    print("pig roarrr");
  }
}

class Cat extends Animal {
  Cat({required super.name, required super.type});

  @override

  void makeNoise() {
    print("Cat meowing");
  }
}

class Horse extends Animal {
  Horse({required super.name, required super.type});

  @override

  void makeNoise() {
    print("Horse roaring");
  }
}

void main() {
  final shape = Shape(size: 12, length: 34, height: 89);
  shape.showInfo();

  final rectangle = Rectangle(size: 3, length: 20, height: 40);
  rectangle.showInfo();

  final animal = Animal(name: "Rice", type: "animal");
  animal.makeNoise();

  final pig = Pig(name: "pepa", type: "pig");
  pig.makeNoise();

  final cat = Cat(name: "Boating boots", type: "cat");
  cat.makeNoise();

  final horse = Horse(name: "Tsuutiin tsagaagc guu", type: "horse");
  horse.makeNoise();

}
