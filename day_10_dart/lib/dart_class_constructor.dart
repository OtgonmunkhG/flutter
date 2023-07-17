
class Wheel {
  Wheel({required int numberOfWheels}) {
    this.numberOfWheels = numberOfWheels;
  }
  int numberOfWheels = 0;

}

class Car {
  Car({required String name, required Wheel dugui}) {
    this.name = name;
    this.dugui = dugui;
  }
  String name = "Car";
  Wheel dugui = Wheel(numberOfWheels: 4);

}

class Floor {
  Floor({required int numberOfFloors}) {
    this.numberOfFloors = numberOfFloors;
  }

  int numberOfFloors = 0;
}

class Door {
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
  int numberOfDoors = 0;
}

class Building {
  Building({required String name, required Floor floors, required Door doors}) {
    this.name = name;
    this.doors = doors;
    this.floors = floors;
  }

  String name = "";
  Floor floors = Floor(numberOfFloors: 0);
  Door doors = Door(numberOfDoors: 0);
}


void main() {
  final lomborginiDugui = Wheel(numberOfWheels: 4);
  final car = Car(name: "Lamborgini", dugui:lomborginiDugui );

  print(lomborginiDugui.numberOfWheels);

  final numberOfFloor = Floor(numberOfFloors: 10);
  final numberOfDoor = Door(numberOfDoors: 2);
  final building = Building(name: "Ajnai 101", floors: numberOfFloor, doors : numberOfDoor );

  print(numberOfFloor.numberOfFloors);
  print(building.name);

}