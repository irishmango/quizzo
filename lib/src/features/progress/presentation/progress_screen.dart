import 'package:flutter/material.dart';
import 'package:quizzo/src/features/progress/widgets/achievement_grid.dart';
import 'package:quizzo/src/features/shared/widgets/card_title_bar.dart';
import 'package:quizzo/theme/theme.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 400,
            height: 740,
            decoration: BoxDecoration(
              color: AppColors.darkBeige,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.appBlack, width: 2),
            ),
            child: Column(
              children: [
                CardTitleBar(title: "Progress", backgroundColor: AppColors.appGreen,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 12,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Quizzes Completed:", style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Anaheim',
                            fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("24",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Anaheim',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Highest Daily Streak:",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Anaheim',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("6",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Anaheim',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Highest Correct Streak:",
                            style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Anaheim',
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                          Text("32",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Anaheim',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your favorite Category:",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Anaheim',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("Music",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Anaheim',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("XP Points Collected:",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Anaheim',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("1800",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Anaheim',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Achievements:",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Anaheim',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 12),
                          AchievementGrid(),
                        ],
                      ),
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

