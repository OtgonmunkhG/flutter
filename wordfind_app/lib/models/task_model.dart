import 'char_model.dart';

class TaskModel {
  TaskModel(
      {required this.pathImage,
      required this.question,
      required this.answer,
      this.arrayButtons = const [],
      this.isDone = false});

  String question;
  String pathImage;
  String answer;
  bool isDone;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];

  setWordFindChar(CharModel puzzels) {
    this.puzzles = puzzles;
  }

  setIsDone() {
    isDone = true;
  }

  fieldCompleteCorrect() {
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if (complete) {
      isFull = false;
      return complete;
    }
    print(complete);
    this.isFull = true;
    String answeredString =
        puzzles.map((puzzle) => puzzle.currentValue).join("");
    if (answeredString == this.answer) {
      return answeredString;
    }
  }

  TaskModel clone() {
    final taskObject =
        TaskModel(answer: answer, pathImage: pathImage, question: question);
    return taskObject;
  }
}

void main() {
  final taskModel = TaskModel(pathImage: "null", question: "question", answer: "answer");
  print(taskModel.fieldCompleteCorrect());
  print("hello");
}
