import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/components/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuestIndicator extends StatelessWidget {
  const QuestIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Questão 4',
                style: AppTextStyles.body,
              ),
              Text(
                'de 10',
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(height: 16),
          IProgressIndicator(
            value: 0.3,
          )
        ],
      ),
    );
  }
}
