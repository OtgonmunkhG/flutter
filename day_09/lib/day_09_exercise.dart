import "dart:io";

class Cat {
  final String _asciiArt = '''
    /\\_/\\
( o . o)
   > ^ <
  ''';
  int x = 3;
  int y = 7;

  void display() {

    List<String> lines = _asciiArt.trim().split("\n");
    for(int i = 0; i <= lines.length; i++) {
      if(i == y ) {
        print(''*x + lines[i]);
      }
      else {
        print(lines[i]);
      }
    }
  }

  void move(int x , int y) {
    this.x = x;
    this.y = y;
    print('$this.x');
    display();
  }

}



void main() {
  final result = Cat();
  result.display();



}