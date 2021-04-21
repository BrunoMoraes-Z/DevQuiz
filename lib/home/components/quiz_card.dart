import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/components/progress_indicator.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.border,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 19),
          Text(
            'Gerencimento de Estado',
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '3 de 10',
                  style: AppTextStyles.body11,
                ),
              ),
              SizedBox(
                width: 80,
                child: Container(
                  child: IProgressIndicator(
                    value: 0.3,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
