import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/components/chart.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Chart(),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Vamos Começar',
                        style: AppTextStyles.heading,
                      ),
                      Text(
                        'Complete os desafios e\navance em conhecimento',
                        style: AppTextStyles.body,
                      )
                    ],
                  ),
                ),
              ),
              Column(),
            ],
          ),
        ),
      ),
    );
  }
}
