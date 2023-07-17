int calculate() {
  return 6 * 7;
}


class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0; //class property x
  int y = 0; //class property y

  void makeNoise() {
    print('My position is ${this.x} and ${this.y}');
  }
}

class Shape {
  Shape({required int length, required int height}) {
    this.length = length;
    this.height = height;
  }
  int length = 0;
  int height = 0;

  void showPosition() {
    print("lets see my size length = ${this.length} and height = ${this.height}");
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
  Pig({required  String name, required String type}) : super(name: '', type: '') {
    this.name = name;
    this.type = type;
  }
  @override
  void makeNoise() {
    // TODO: implement makeNoise
    super.makeNoise();
    print("pig roarrr");
  }
  String name = "";
  String type = "";
}

class Door {
  int numberOfDoors = 12;
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
}


void main() {
  final Drum = Sprite(10, 10); // create sprite object
  Drum.makeNoise();
  final door = Door(numberOfDoors: 90);
  print(door.numberOfDoors);
  final shape = Shape(length: 945, height: 58);
  shape.showPosition();

  final pig = Pig(name: "pig", type: "pig");
  pig.makeNoise();
}
