import 'package:quizzo/src/data/quiz.dart';

class Category {
  final String title;
  final String id;
  final List<Quiz> quizzes;

  const Category({
    required this.title,
    required this.id,
    required this.quizzes
  });
}