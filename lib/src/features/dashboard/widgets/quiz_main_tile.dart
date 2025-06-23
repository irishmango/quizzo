import 'package:flutter/material.dart';
import 'package:quizzo/src/features/quiz/presentation/intro_screen.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';
import 'package:quizzo/theme/theme.dart';

class QuizMainTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const QuizMainTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => IntroScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Container(
          width: 400,
          height: 366,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFF202020),
              width: 2,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(120), // overlay
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledTitleSmallText(title),
                      const SizedBox(height: 4),
                      StyledBodySmallText(subtitle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}