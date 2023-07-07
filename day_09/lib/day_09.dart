

//манай sprite буюу class
class Sprite {
  String name = "Sprite";
  int x = 0;
  int y = 0;
  int size = 100;
  int direction = 90;
  bool show = true;
  //constructor
  Sprite(String name) {
    this.name = name;
  }

  String getName() {
    return this.name;
  }
  void say(String name) {
    print("Hello my name is $name");
  }

  void move(int x) {
    this.x = x;
    print("I moved ${this.x}");
  }

}

void main() {
  final Dee = Sprite("Dee");
  final Chick = Sprite("Chick");
  final Ruby = Sprite("Ruby");
  Dee.say("Dee");
  Dee.move(19);
  print(Dee.getName());

  Chick.say("Chick");
  Chick.move(100);
  print(Chick.getName());

  Ruby.say("Ruby");
  Ruby.move(200);
  print(Ruby.getName());


}