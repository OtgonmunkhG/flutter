import 'package:flutter/material.dart';
import 'package:wordfind_app/widgets/task_widget.dart';

import '../models/task_model.dart';
import '../models/user_model.dart';
import '../widgets/question.dart';

class TaskPage extends StatefulWidget {
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  GlobalKey<TaskWidgetState> globalKey = GlobalKey();
  late List<TaskModel> listQuestions;
  late User user;

  @override
  void initState() {
    listQuestions = question;
    // user = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xFFFBF5F2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Othoo",
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(builder: (context, constraints) {
                return Container(
                  height: 400,
                  child: TaskWidget(
                      constraints.biggest,
                      listQuestions
                          .map((question) => question.clone())
                          .toList(),
                      Key: globalKey),
                );
              }),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFE86B02), Color(0xFFFA86B02)],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      globalKey.currentState?.generatePuzzle(
                        loop: listQuestions
                            .map((question) => question.clone())
                            .toList(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: Text(
                      "Reload",
                      style: TextStyle(
                          fontFamily: "Nunito", fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
