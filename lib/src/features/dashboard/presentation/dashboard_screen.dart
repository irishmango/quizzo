import 'package:flutter/material.dart';
import 'package:quizzo/categories.dart';
import 'package:quizzo/quiz_main_tile.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
    
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 237, 231, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("QUIZZO!", style: TextStyle(fontSize: 96, fontFamily: 'Anaheim', fontWeight: FontWeight.w600),),
                Categories(),
                Center(
                  child: ListView.builder(
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
                ),
              ],
            ),
          ),
      ),
      );
  }
}
