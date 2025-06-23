import 'package:flutter/material.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';

class ResultsWidget extends StatelessWidget {
  final int score;
  final int total;

  const ResultsWidget({super.key, required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
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
                  Center(child: StarWidget()),
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
  const StarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200, 
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 64),
              Icon(Icons.star_border, color: Colors.black, size: 64),
            ],
          ),
          Positioned(
            top: -5,
            child: Icon(Icons.star, color: Colors.amber, size: 64),
          ),
        ],
      ),
    );
  }
}