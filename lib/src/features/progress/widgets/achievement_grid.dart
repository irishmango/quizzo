import 'package:flutter/material.dart';
import 'package:quizzo/src/features/progress/presentation/progress_screen.dart';

class AchievementGrid extends StatelessWidget {
  final int itemCount;

  const AchievementGrid({super.key, this.itemCount = 25});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5, 
      crossAxisSpacing: 32,
      mainAxisSpacing: 32,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(itemCount, (index) {
        return AchievementTile();
      }),
    );
  }
}


class AchievementTile extends StatelessWidget {
  const AchievementTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

