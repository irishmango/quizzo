import 'package:flutter/material.dart';
import 'package:quizzo/src/features/quiz/presentation/quiz_widget.dart';
import 'package:quizzo/src/features/quiz/presentation/results_widget.dart';
import 'package:quizzo/theme/theme.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool showResults = false;
  int finalScore = 0;

  void onQuizComplete(int score) {
    setState(() {
      finalScore = score;
      showResults = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 700,
          decoration: BoxDecoration(
            color: AppColors.darkBeige,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFF202020), width: 2),
          ),
          child: Column(
            children: [
              Container(
                height: 60,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      } ,
                      child: Text(
                        'X',
                        style: TextStyle(
                          fontFamily: 'Anaheim',
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'The 80’s',
                    style: TextStyle(
                      fontFamily: 'Anaheim',
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 48),
                ],
              ),
              ),
              showResults
                  ? ResultsWidget(score: finalScore, total: 2)
                  : QuizWidget(onComplete: onQuizComplete),
            ],
          ),
        ),
      ),
    );
  }
}