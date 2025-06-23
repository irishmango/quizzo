
import 'package:quizzo/src/data/category.dart';
import 'package:quizzo/src/data/database_repository.dart';
import 'package:quizzo/src/data/quiz.dart';
import 'package:quizzo/src/data/quiz_results.dart';
import 'package:quizzo/src/data/user.dart';

class MockDatabaseRepository implements DatabaseRepository {
  final List<User> users = [];
  final List<Quiz> quizResults = [];
  final List<Category> categories = [
  ];

  @override
  Future<List<Category>> getAllCategories() async {
    await Future.delayed(const Duration(seconds: 1));
    return categories;
  }

  @override
  Future<List<Quiz>> getAllQuizzes() async {
    await Future.delayed(const Duration(seconds: 1));
    return categories.expand((c) => c.quizzes).toList();
  }

  @override
  Future<List<Quiz>> getQuizzes(String categoryId) async {
    await Future.delayed(const Duration(seconds: 1));
    return categories.firstWhere((c) => c.id == categoryId).quizzes;
  }

  @override
  Future<Quiz> getQuiz(String quizId) async {
    await Future.delayed(const Duration(seconds: 1));
    return categories
        .expand((c) => c.quizzes)
        .firstWhere((q) => q.id == quizId);
  }

  @override
  Future<void> saveQuizResult(QuizResult result) async {
    await Future.delayed(const Duration(seconds: 1));
    quizResults.add(result);
  }

  @override
  Future<List<QuizResult>> getUserQuizResults(String userId) async {
    await Future.delayed(const Duration(seconds: 1));
    return quizResults.where((r) => r.userId == userId).toList();
  }

  @override
  Future<void> addUser(User user) async {
    await Future.delayed(const Duration(seconds: 1));
    users.add(user);
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

