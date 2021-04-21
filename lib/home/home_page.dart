import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/home/components/custom_app_bar.dart';
import 'package:DevQuiz/home/components/level_button.dart';
import 'package:DevQuiz/home/components/quiz_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButton(label: 'Fácil'),
                LevelButton(label: 'Médio'),
                LevelButton(label: 'Difícil'),
                LevelButton(label: 'Perito'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
