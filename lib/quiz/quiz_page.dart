import 'package:DevQuiz/quiz/components/Awnser.dart';
import 'package:DevQuiz/quiz/components/quest_indicator.dart';
import 'package:DevQuiz/quiz/components/quiz.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: QuestIndicator(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Quiz(
          title: 'Teste',
        ),
      ),
    );
  }
}
