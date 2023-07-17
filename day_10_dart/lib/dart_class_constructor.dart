
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


void main() {
  final lomborginiDugui = Wheel(numberOfWheels: 4);
  final car = Car(name: "Lamborgini", dugui:lomborginiDugui );
}