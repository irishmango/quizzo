import 'package:flutter/material.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';

class ResultsWidget extends StatelessWidget {
  final int score;
  final int total;

  const ResultsWidget({super.key, required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    double percScore = score / total * 100;

    return Expanded(
      child: Center(
        child: Column(
          children: [
            // Quiz content
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 54, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Results:',
                    style: TextStyle(fontFamily: 'Anaheim', fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 16,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StyledBodyMediumText("Correct Answers:"),
                          StyledBodyMediumText(score.toString()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StyledBodyMediumText("Total Questions:"),
                          StyledBodyMediumText(total.toString()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StyledBodyMediumText('XP Points:'),
                          StyledBodyMediumText("${score * 10}"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 64),
                  Center(child: StarWidget(percScore: percScore)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StarWidget extends StatelessWidget {
  final double percScore;

  const StarWidget({required this.percScore, super.key});

  @override
  Widget build(BuildContext context) {
    Icon getStar(bool filled) => Icon(
          filled ? Icons.star : Icons.star_border,
          color: filled ? Colors.amber : Colors.black,
          size: 64,
        );

    bool oneStar = percScore >= 33;
    bool twoStars = percScore >= 66;
    bool threeStars = percScore >= 90;

    return SizedBox(
      width: 200,
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getStar(oneStar),
              getStar(twoStars),
            ],
          ),
          Positioned(
            top: -5,
            child: getStar(threeStars),
          ),
        ],
      ),
    );
  }
}