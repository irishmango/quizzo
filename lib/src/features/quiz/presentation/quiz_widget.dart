import 'package:flutter/material.dart';
import 'package:quizzo/src/features/quiz/presentation/results_widget.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';
import 'package:quizzo/theme/theme.dart';

class QuizWidget extends StatefulWidget {
  final void Function(int score) onComplete;

  const QuizWidget({super.key, required this.onComplete});

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int currentQuestionIndex = 0;
  int? selectedIndex;
  bool isAnswered = false;
  bool hasChecked = false;
  int score = 0;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Who was the lead singer of the band "Thin Lizzy"?',
      'options': [
        'Ozzy Osbourne',
        'Phil Lynott',
        'Freddie Mercury',
        'Lemmy Kilmister',
      ],
      'correct': 1,
    },
    {
      'question': 'Which band released the song "Bohemian Rhapsody"?',
      'options': [
        'The Beatles',
        'Queen',
        'Pink Floyd',
        'Led Zeppelin',
      ],
      'correct': 1,
    },
  ];

  void nextQuestion() {
    if (selectedIndex == questions[currentQuestionIndex]['correct']) {
      score++;
    }

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedIndex = null;
        isAnswered = false;
        hasChecked = false;
      });
    } else {
      widget.onComplete(score);
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestionIndex];

    return Expanded(
      child: Center(
        child: Column(
          children: [
            // Quiz content
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      StyledHeadlineSmallText(question['question'],),
                      const SizedBox(height: 48),
        
                      ...List.generate(
                        question['options'].length,
                        (index) {
                          final option = question['options'][index];
                          final isCorrect = question['correct'] == index;
                          final isSelected = selectedIndex == index;
                          Color borderColor = AppColors.appBlack;
                          Color fillColor = Colors.transparent;
                          Color textColor = Colors.black;
        
                          if (isAnswered) {
                            if (isCorrect) {
                              fillColor = AppColors.appGreen;
                              textColor = Colors.white;
                            } else if (isSelected) {
                              fillColor = AppColors.appRed;
                              textColor = Colors.white;
                            }
                          } else if (isSelected) {
                            fillColor = AppColors.appBlue;
                            textColor = Colors.white;
                          }
        
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: GestureDetector(
                              onTap: isAnswered
                                  ? null
                                  : () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                              child: Container(
                                height: 57,
                                width: 277,
                                decoration: BoxDecoration(
                                  color: fillColor,
                                  border: Border.all(width: 2, color: borderColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    option,
                                    style: TextStyle(
                                      fontFamily: 'Anaheim',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
        
                      const SizedBox(height: 24),
                      SizedBox(
                        height: 57,
                        width: 57,
                        child: Opacity(
                          opacity: (selectedIndex != null || isAnswered) ? 1 : 0,
                          child: IgnorePointer(
                            ignoring: !(selectedIndex != null || isAnswered),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (!hasChecked) {
                                    hasChecked = true;
                                    isAnswered = true;
                                  } else {
                                    nextQuestion();
                                  } 
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isAnswered 
                                  ? AppColors.appGreen
                                  : AppColors.appTeal,
                                  border: Border.all(width: 2),
                                ),
                                child: const Center(
                                  child: Icon(Icons.arrow_forward, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}