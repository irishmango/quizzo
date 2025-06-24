import 'package:flutter/material.dart';
import 'package:quizzo/src/data/database_repository.dart';
import 'package:quizzo/src/features/dashboard/widgets/categories_widget.dart';
import 'package:quizzo/src/features/dashboard/widgets/quiz_main_tile.dart';
import 'package:quizzo/src/features/profile/widgets/profile_photo_widget.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';
import 'package:quizzo/src/data/quiz.dart';
import 'package:quizzo/src/data/category.dart';

class Dashboard extends StatefulWidget {
  final DatabaseRepository db;
  const Dashboard({super.key, required this.db});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedCategoryIndex = 0;
  List<Quiz> quizzes = [];
  List<Category> categories = [];

  @override
  void initState() {
    super.initState();
    _loadCategoriesAndQuizzes();
  }

  void _loadCategoriesAndQuizzes() async {
    final fetchedCategories = await widget.db.getAllCategories();
    setState(() {
      categories = fetchedCategories;
    });
    _loadQuizzesForCategory(selectedCategoryIndex);
  }

  void _loadQuizzesForCategory(int index) {
    if (index == 0) {
      // Shuffle category
      final allQuizzes = categories.expand((c) => c.quizzes).toList()..shuffle();
      final limitedQuizzes = allQuizzes.take(4).toList();
      setState(() {
        quizzes = limitedQuizzes;
        selectedCategoryIndex = index;
      });
    } else if (index - 1 < categories.length) {
      final selectedCategory = categories[index - 1];
      setState(() {
        quizzes = selectedCategory.quizzes;
        selectedCategoryIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StyledTitleLargeText("Quizzo"),
                Expanded(
                  child: ProfilePhotoWidget(radius: 40, showEditButton: false),
                ),
              ],
            ),
            Column(
              children: [
                CategoriesWidget(
                  db: widget.db,
                  onCategorySelected: (index) {
                    _loadQuizzesForCategory(index);
                  },
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: quizzes.length,
                  itemBuilder: (context, index) {
                    final quiz = quizzes[index];
                    return QuizMainTile(
                      title: quiz.title,
                      subtitle: quiz.subtitle,
                      imagePath: quiz.imagePath,
                      db: widget.db,
                      quiz: quiz,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}