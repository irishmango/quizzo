import 'package:flutter/material.dart';
import 'package:quizzo/src/features/dashboard/widgets/categories.dart';
import 'package:quizzo/src/features/dashboard/widgets/quiz_main_tile.dart';
import 'package:quizzo/src/features/profile/presentation/profile_screen.dart';
import 'package:quizzo/src/features/progress/presentation/progress_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "QUIZZO!",
              style: TextStyle(
                fontSize: 96,
                fontFamily: 'Anaheim',
                fontWeight: FontWeight.w600,
              ),
            ),
            Categories(),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: musicQuizzes.length,
              itemBuilder: (context, index) {
                final quiz = musicQuizzes[index];
                return QuizMainTile(
                  title: quiz['title']!,
                  subtitle: quiz['subtitle']!,
                  imagePath: quiz['image']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
   
final List<Map<String, String>> musicQuizzes = [
  {
    'title': "The 80’s",
    'subtitle': "Test your 80’s music knowledge",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "The 90’s",
    'subtitle': "Test your 90’s music knowledge",
    'image': 'assets/img/cassett_1.png',
  },
  {
    'title': "The 00’s",
    'subtitle': "Test your 00’s music knowledge",
    'image': 'assets/img/cassett_2.png',
  },
];