import 'package:flutter/material.dart';
import 'package:quizzo/src/data/achievement.dart';
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
      children: achievements.entries.map((entry) {
        final data = entry.value;
        return AchievementTile(
          title: data['name'] ?? '',
          description: data['description'] ?? '',
          imagePath: data['pathName'] ?? '',
        );
      }).toList(),
    );
  }
}


class AchievementTile extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const AchievementTile({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: Colors.white,
            child: PopUpTile(imagePath: imagePath, title: title, description: description),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: AssetImage(
              imagePath.isNotEmpty ? imagePath : 'assets/img/trophy_locked.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.grey.withAlpha(153), BlendMode.difference)
          ),
        ),
      ),
    );
  }
}

class PopUpTile extends StatelessWidget {
  const PopUpTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath.isNotEmpty ? imagePath : 'assets/img/trophy_locked.png',
            height: 80,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close', style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
