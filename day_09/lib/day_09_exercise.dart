import "dart:io";

class Cat {
  int x = 10;
  int y = 7;
  String _asciiArt = "";

  void display() {
    List<String> result = this._asciiArt.trim().split("\n");

    for(int i = 0; i <= result.length; i++) {
      if(i == y) {
        print("" * x + result[i]);
      }
      else {
        print(result[i]);
      }
    }
  }
}

void main() {
  final cat  = Cat();
  cat.display();
}