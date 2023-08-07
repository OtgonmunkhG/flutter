import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';
import 'dart:math';
import '../models/task_model.dart';

class GameWidget extends StatefulWidget {
  final Size size;
  final List<TaskModel> listQuestions;
  const GameWidget(this.size, this.listQuestions,{super.key});

  @override
  State<GameWidget> createState() => GameWidgetState();
}

class GameWidgetState extends State<GameWidget> {
  late Size size;
  late List<TaskModel> listQuestins;
  int currentQuestionIndex = 0;
  int hintCount = 0;

  @override
  void initState() {
    size = widget.size;
    generatePuzzle();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  generatePuzzle(
      {List<TaskModel>? Loop, bool next = false, bool left = false}) {
    if(Loop != null) {
      currentQuestionIndex = 0;
    listQuestins = [];
    listQuestins.addAll(Loop);
    }
    else {
      if(next && currentQuestionIndex < listQuestins.length - 1) {
        next = true;
        currentQuestionIndex++;
      } else if(left && currentQuestionIndex > 0) {
        currentQuestionIndex--;

      }
      else if(currentQuestionIndex >= listQuestins.length - 1) {
        return;
      }

      setState(() {});

      if(listQuestins[currentQuestionIndex].isDone) return;

      TaskModel currentQuestion = listQuestins[currentQuestionIndex];
      setState(() {
        currentQuestion;
      });
      final List<String> answer = [currentQuestion.answer];
      final WSSettings wordSetting = WSSettings(width: 14, height: 1, orientations: List.from([WSOrientation.horizontal]));

      final WordSearchSafety wordSearch = WordSearchSafety();
      final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(answer, wordSetting);

      if(newPuzzle.errors!.isEmpty) {
        currentQuestion.arrayButtons = newPuzzle.puzzle!.expand((list) => list).toList();
        currentQuestion.arrayButtons.shuffle();
        bool isDone = currentQuestion.isDone;
      }
    }
  }
}
