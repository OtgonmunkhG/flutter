import "dart:io";
import "dart:math";

void main() {
  int random = Random().nextInt(100);
  int randomNumber = random;
  int attempts = 0;
  int? guess = 0;
  print("Welcome to Guess the number!");
  print("I have chosen a number between 1 and 100");
  print("Can you guess the number?");

  while(guess != randomNumber) {
    stdout.write("Enter the guess:");
    String input = stdin.readLineSync().toString();
    if(input == null) {
      print("Invalid input. Please enter a number");
      continue;
    }

    guess = int.tryParse(input);
    if(guess < randomNumber) {
      print("Too high");
    } else if(guess > randomNumber) {
      print("Too low");
    }
    else {
      print("Congratulations! You guessed the correct number in $attempts attempts");
    }

    attempts++;


  }

  print("Thanks for playing!");
  print("Player attempted $attempts times");
}


